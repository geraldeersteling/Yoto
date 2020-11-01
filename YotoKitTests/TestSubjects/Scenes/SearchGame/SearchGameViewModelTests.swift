//
//  SearchGameViewModelTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 14/08/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Cuckoo
import Nimble
import Quick
import Resolver
import RxBlocking
import RxCocoa
import RxNimble
import RxSwift
import RxTest
import XCTest
@testable import YotoKit

class SearchGameViewModelTests: QuickSpec {
    // MARK: Subject under test

    var sut: SearchGameViewModel!
    var scheduler: TestScheduler!
    var concurrentScheduler: ConcurrentDispatchQueueScheduler!
    var bag: DisposeBag!

    func setupDependencyInjection() {
        Resolver.register(name: Resolver.RepositoryNames.SearchGames.remote.rawValue) { MockSearchGamesRepository() as SearchGamesRepository }
    }

    // MARK: Test doubles

    func stubRepository(_ repository: MockSearchGamesRepository) {
        stub(repository) { mock in
            when(mock).searchGames(any())
                .thenReturn(Single<[Game]>.just([GameSeeds.firstSeed]))
            when(mock).searchGames("empty")
                .thenReturn(Single<[Game]>.just([]))
        }
    }

    // MARK: Helper functions

    @discardableResult
    func scheduleASearch(_ query: String) -> TestableObservable<String> {
        // Schedule a search
        let search = self.scheduler.createHotObservable([
            .next(0, query),
            .completed(10)
        ])
        search
            .bind(to: self.sut.searchQuery)
            .disposed(by: self.bag)

        return search
    }

    // MARK: Tests

    override func spec() {
        describe("The ViewModel") {
            var repository: MockSearchGamesRepository!

            beforeEach {
                self.scheduler = TestScheduler(initialClock: 0)
                self.concurrentScheduler = ConcurrentDispatchQueueScheduler(qos: .default)
                self.bag = DisposeBag()
                self.setupDependencyInjection()
                self.sut = Resolver.optional()
                repository = self.sut.repository as? MockSearchGamesRepository
                self.stubRepository(repository)
            }

            afterEach {
                self.scheduler = nil
                self.concurrentScheduler = nil
                self.bag = nil
                self.sut = nil
            }

            context("when searching for games") {
                // Then
                it("should search for games when a query is emitted") {
                    let obs = self.sut.searchResults
                        .asObservable()
                        .skip(1) // We drop the first result since it contains an empty array (because this is a Driver) //QUESTION: make it a Signal?
                        .subscribeOn(self.concurrentScheduler)

                    self.sut.searchQuery.accept("some search")

                    let results = try obs.toBlocking().first()?.first
                    expect { results?.items }
                        .to(haveCount(1))
                    expect { results?.items }
                        .to(contain(SearchGameSeeds.firstSearchGameTableItem))
                }

                it("should not search when the emitted query is empty") {
                    // Schedule a search
                    self.scheduleASearch("")
                    self.scheduler.start()

                    self.sut.searchResults
                        .asObservable()
                        .skip(1) // We drop the first result since it contains an empty array (because this is a Driver) //QUESTION: make it a Signal?
                        .subscribe(onNext: { sections in
                            // We only want one section for the search results and it should contain no results
                            expect { sections }.to(haveCount(1))
                            expect { sections.first?.items }.to(haveCount(0))
                        })
                        .disposed(by: self.bag)
                }

                it("should give back the correct number of results and sections") {
                    let obs = self.sut.searchResults
                        .asObservable()
                        .skip(1) // We drop the first result since it contains an empty array (because this is a Driver) //QUESTION: make it a Signal?
                        .subscribeOn(self.concurrentScheduler)

                    self.sut.searchQuery.accept("some search")
                    _ = try obs.toBlocking().first()

                    expect { self.sut.numberOfSearchResults }.to(be(1))
                    expect { self.sut.numberOfSections }.to(be(1))
                }
            }

            context("when asked for an item") {
                // Then
                it("it should give the requested item") {
                    let obs = self.sut.searchResults
                        .asObservable()
                        .skip(1) // We drop the first result since it contains an empty array (because this is a Driver) //QUESTION: make it a Signal?
                        .subscribeOn(self.concurrentScheduler)

                    self.sut.searchQuery.accept("some search")

                    _ = try obs.toBlocking().first() // QUESTION: why do we need to explicitly call; toBlocking AND first before it get properly run?
                    //          with just toArray it keeps on blocking (because of no completed event?)

                    expect { self.sut.item(at: 0) }
                        .to(equal(SearchGameSeeds.firstSearchGameTableItem))
                }

                // Then
                it("it should not give an item with no search results") {
                    let obs = self.sut.searchResults
                        .asObservable()
                        .skip(1)
                        .subscribeOn(self.concurrentScheduler)

                    self.sut.searchQuery.accept("empty")
                    _ = try obs.toBlocking().first() // QUESTION: why do we need to explicitly call; toBlocking AND first before it get properly run?
                    //          with just toArray it keeps on blocking (because of no completed event?)
                    expect { self.sut.item(at: 0) }
                        .to(beNil())
                }

                // Then
                it("should give back the correct GameUri") {
                    let obs = self.sut.searchResults
                        .asObservable()
                        .skip(1) // We drop the first result since it contains an empty array (because this is a Driver) //QUESTION: make it a Signal?
                        .subscribeOn(self.concurrentScheduler)

                    self.sut.searchQuery.accept("some search")

                    _ = try obs.toBlocking().first() // QUESTION: why do we need to explicitly call; toBlocking AND first before it get properly run?
                    //          with just toArray it keeps on blocking (because of no completed event?)

                    expect { self.sut.uriForGame(at: 0) }
                        .to(equal(SearchGameSeeds.firstSearchGameTableItem.gameUri))
                }
            }
        }
    }
}
