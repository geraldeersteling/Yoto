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
@testable import Yoto

class GameRemoteRepositoryTests: QuickSpec {
    // MARK: Subject under test

    var sut: GamesRemoteRepository!

    // MARK: Test setup

    func setupSearchGamePresenter() {
        sut = GamesRemoteRepository()
    }

    // MARK: Test doubles

    // MARK: Tests

    override func spec() {
        describe("A remote repository") {
            let stubHost = isHost(IGDB.baseURL.host!)

            beforeEach {
                HTTPStubs.onStubMissing { fail("Stub missing for request: \($0) -- \(IGDB.baseURL.host!)") }
                self.setupSearchGamePresenter()
            }
            afterEach {
                HTTPStubs.removeAllStubs()
            }

            context("when asked to search for games") {
                beforeEach {
                    let searchPath = stubTargetPath(GamesTarget.searchForGame(query: ""))
                    stub(condition: stubHost && isPath(searchPath)) { _ in
                        HTTPStubsResponse(jsonObject: [GameSeeds.firstSeed.toJSON()],
                                          statusCode: 200,
                                          headers: nil)
                    }.name = "Stub for returning a list of games"
                }

                it("should retrieve and return a list of search results") {
                    let exp = QuickSpec.current.expectation(description: "Search on the API")
                    self.sut.searchGames("any search") { games in
                        expect { games }
                            .to(contain(GameSeeds.firstSeed))
                        exp.fulfill()
                    }
                    QuickSpec.current.waitForExpectations(timeout: 5)
                }
            }

            context("when asked to get the details of a game") {
                beforeEach {
                    let gamesPath = stubTargetPath(GamesTarget.detailsForGame(id: 1))
                    stub(condition: stubHost && isPath(gamesPath)) { _ in
                        HTTPStubsResponse(jsonObject: [GameSeeds.firstSeed.toJSON()],
                                          statusCode: 200,
                                          headers: nil)
                    }.name = "Stub for resolving a game at the API"
                }

                it("should retrieve all details") {
                    let exp = QuickSpec.current.expectation(description: "Resolve a game using the API")
                    self.sut.fetchGameDetails(gameID: GameSeeds.firstSeed.id) { game in
                        expect { game.id }.to(equal(GameSeeds.firstSeed.id))
                        expect { game.name }.to(equal(GameSeeds.firstSeed.name))
                        exp.fulfill()
                    }
                    QuickSpec.current.waitForExpectations(timeout: 5)
                }
            }
        }
    }
}
