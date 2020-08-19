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

    // MARK: Tests

    override func spec() {
        describe("The ViewModel") {
            var repository: MockGamesRepository!

            beforeEach {
                self.scheduler = TestScheduler(initialClock: 0)
                self.bag = DisposeBag()
                self.setupDependencyInjection()
                self.sut = Resolver.optional()
                repository = self.sut.repository as? MockGamesRepository
                self.stubRepository(repository)
            }

            afterEach {
                self.scheduler = nil
                self.bag = nil
            }

            context("after installing the search driver") {
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

                it("should drive the search when a string is emitted") {
                    self.sut.installSearchDriver(Driver.just("some search"))

                    let result = items.events
                        .dropFirst() // We drop the first result since it contains an empty array (because this is a Driver-- TODO: make it a Signal)
                        .compactMap { $0.value.element?.first }
                    expect { result.first?.items }
                        .to(contain(SearchGameSeeds.firstSearchGameTableItem))
                }

                it("should not drive the search when an empty string is emitted") {
                    self.sut.installSearchDriver(Driver.just(""))

                    let result = items.events
                        .dropFirst()
                        .compactMap { $0.value.element?.first }
                    expect { result.first?.items }
                        .to(beNil())
                }
            }

            context("when searching for games") {
                // Then
                it("should query the repository for the games") {
                    // Create an observer and let the search results drive it
                    let items = self.scheduler.createObserver([SearchGameTableSection].self)
                    self.sut.searchResults
                        .drive(items)
                        .disposed(by: self.bag)

                    // Perform a search and fetch the results
                    self.sut.search(query: "some search")
                    let result = items.events.compactMap {
                        $0.value.element?.first
                    }

                    // We only want one section for the search results and it should contain all results
                    expect { result }.to(haveCount(1))
                    expect { result.first?.items }
                        .to(contain(SearchGameSeeds.firstSearchGameTableItem))
                }

                it("should signal that it is searching") {
                    // Create an observer and let isSearching drive it
                    let isSearching = self.scheduler.createObserver(Bool.self)
                    self.sut.isSearching
                        .drive(isSearching)
                        .disposed(by: self.bag)

                    // Perform a search and fetch the things we're interested in
                    self.sut.search(query: "some search")
                    let result = isSearching.events.compactMap { $0.value.element }

                    // We test if the initial state is 'not-searching', followed by 'searching' and ends with
                    // 'not-searching' again when the search concludes.
                    expect { result }.to(equal([false, true, false]))
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
                    self.sut.search(query: "some search")

                    expect { self.sut.item(at: 0) }
                        .to(equal(SearchGameSeeds.firstSearchGameTableItem))
                }

                // Then
                it("it should not give an item with no search results") {
                    self.sut.search(query: "empty")

                    expect { self.sut.item(at: 0) }
                        .to(beNil())
                }
            }
        }
    }
}
