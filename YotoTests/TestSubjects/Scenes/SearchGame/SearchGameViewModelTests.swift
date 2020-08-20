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
import RxSwift
import RxTest
import XCTest
@testable import Yoto

class SearchGameViewModelTests: QuickSpec {
    // MARK: Subject under test

    var sut: SearchGameViewModel!
    var scheduler: TestScheduler!
    var concurrentScheduler: ConcurrentDispatchQueueScheduler!
    var bag: DisposeBag!

    func setupDependencyInjection() {
        Resolver.register(name: Resolver.RepositoryNames.Games.remote.rawValue) { MockGamesRepository() as GamesRepository }
    }

    // MARK: Test doubles

    func stubRepository(_ repository: MockGamesRepository) {
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
            // .completed(10)
        ])
        search
            .bind(to: self.sut.searchQuery)
            .disposed(by: self.bag)

        return search
    }

    // MARK: Tests

    override func spec() {
        describe("The ViewModel") {
            var repository: MockGamesRepository!

            beforeEach {
                self.scheduler = TestScheduler(initialClock: 0)
                self.concurrentScheduler = ConcurrentDispatchQueueScheduler(qos: .default)
                self.bag = DisposeBag()
                self.setupDependencyInjection()
                self.sut = Resolver.optional()
                repository = self.sut.repository as? MockGamesRepository
                self.stubRepository(repository)
            }

            afterEach {
                self.scheduler = nil
                self.concurrentScheduler = nil
                self.bag = nil
                self.sut = nil
            }

            context("when searching for games") {
                var items: TestableObserver<[SearchGameTableSection]>!

                beforeEach {
                    items = self.scheduler.createObserver([SearchGameTableSection].self)
                    self.sut.searchResults
                        .drive(items)
                        .disposed(by: self.bag)
                }
                afterEach {
                    items = nil
                }

                // Then
                it("should search for games when a query is emitted") {
                    // Schedule a search
                    self.scheduleASearch("some search")
                    self.scheduler.start()

                    self.sut.searchResults
                        .asObservable()
                        .skip(1) // We drop the first result since it contains an empty array (because this is a Driver) //QUESTION: make it a Signal?
                        .subscribe(onNext: { sections in
                            // We only want one section for the search results and it should contain all results
                            expect { sections }.to(haveCount(1))
                            expect { sections.first?.items }
                                .to(contain(SearchGameSeeds.firstSearchGameTableItem))
                        })
                        .disposed(by: self.bag)
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
            }

            context("when asked for an item") {
                var items: TestableObserver<[SearchGameTableSection]>!

                // Given
                beforeEach {
                    items = self.scheduler.createObserver([SearchGameTableSection].self)
                    self.sut.searchResults
                        .drive(items)
                        .disposed(by: self.bag)
                }

                // Then
                it("it should give the requested item") {
                    self.scheduleASearch("some search")
                    self.scheduler.start()

                    self.sut.searchResults.asObservable()
                        .skip(1) // We drop the first result since it contains an empty array (because this is a Driver) //QUESTION: make it a Signal?
                        .subscribe(onNext: { _ in
                            expect { self.sut.item(at: 0) }
                                .to(equal(SearchGameSeeds.firstSearchGameTableItem))
                        })
                        .disposed(by: self.bag)
                }

                // Then
                it("it should not give an item with no search results") {
                    self.scheduleASearch("empty")
                    self.scheduler.start()

                    self.sut.searchResults.asObservable()
                        .skip(1) // We drop the first result since it contains an empty array (because this is a Driver) //QUESTION: make it a Signal?
                        .subscribe(onNext: { _ in
                            expect { self.sut.item(at: 0) }
                                .to(beNil())
                        })
                        .disposed(by: self.bag)
                }
            }
        }
    }
}
