//
//  SearchGameRemoteRepositoryTests.swift
//  YotoTests
//
//  Created by Gerald Eersteling on 03/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Nimble
import OHHTTPStubs
import Quick
import Resolver
import RxSwift
@testable import YotoKit
@testable import YotoTestSupport

class SearchGamesRemoteRepositoryTests: QuickSpec {
    // MARK: Subject under test

    var sut: SearchGamesRemoteRepository!

    var concurrentScheduler: ConcurrentDispatchQueueScheduler!
    var bag: DisposeBag!

    // MARK: Test setup

    // MARK: Test doubles

    // MARK: Tests

    override func spec() {
        describe("A remote search repository") {
            beforeEach {
                HTTPStubs.onStubMissing { fail("Stub missing for request: \($0) -- \(IGDB.baseURL.host!)") }

                self.sut = Resolver.optional()
                self.concurrentScheduler = ConcurrentDispatchQueueScheduler(qos: .default)
                self.bag = DisposeBag()
            }
            afterEach {
                HTTPStubs.removeAllStubs()
                self.sut = nil
                self.concurrentScheduler = nil
                self.bag = nil
            }

            context("when asked to search for games") {
                beforeEach {
                    GamesTargetStub.stubSearchForGame()
                }

                it("should retrieve and return a list of search results") {
                    let exp = QuickSpec.current.expectation(description: "should retrieve and return a list of search results")
                    self.sut.searchGames("any search")
                        .subscribe { games in
                            expect { games }.to(contain(GameSeeds.firstSeed))
                            exp.fulfill()
                        } onError: { _ in
                            // We don't care about the error at this moment--we're not testing the behavior of RxSwift
                        }
                        .disposed(by: self.bag)
                    QuickSpec.current.waitForExpectations(timeout: 5)
                }
            }

            context("when asked to get the details of a game") {
                beforeEach {
                    GamesTargetStub.stubDetailsForGame()
                }

                it("should retrieve all details") {
                    let exp = QuickSpec.current.expectation(description: "Should retrieve all details")
                    self.sut.fetchGameDetails(uri: GameSeeds.firstSeed.uri)
                        .subscribe { game in
                            expect { game.uri } == GameSeeds.firstSeed.uri
                            exp.fulfill()
                        } onError: { _ in
                            // We don't care about the error at this moment--we're not testing the behavior of RxSwift
                        }
                        .disposed(by: self.bag)
                    QuickSpec.current.waitForExpectations(timeout: 5)
                }
            }
        }
    }
}
