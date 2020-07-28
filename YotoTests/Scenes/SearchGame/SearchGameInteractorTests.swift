//
//  SearchGameInteractorTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 13/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Nimble
import Quick
import XCTest
@testable import Yoto

class SearchGameInteractorTests: QuickSpec {
    // MARK: Subject under test

    var sut: SearchGameInteractor!

    // MARK: Test setup

    func setupSearchGameInteractor() {
        sut = SearchGameInteractor()
    }

    // MARK: Test doubles

    class SearchGamePresentationLogicSpy: SearchGamePresentationLogic {
        var presentSearchForGameResultsCalled = false

        func presentSearchForGameResults(response: SearchGame.SearchForGame.Response) {
            presentSearchForGameResultsCalled = true
        }
    }

    class SearchGameWorkerSpy: SearchGameWorker {
        var searchGameCalled = false

        override func searchGame(_ query: String, completion: ([Game]) -> Void) {
            searchGameCalled = true
            completion(GameSeeds.seeds)
        }
    }

    // MARK: Tests

    override func spec() {
        describe("The interactor") {
            beforeEach {
                self.setupSearchGameInteractor()
            }

            context("when asked to search for a game") {
                var spy: SearchGamePresentationLogicSpy!
                var workerSpy: SearchGameWorkerSpy!
                var request: SearchGame.SearchForGame.Request!

                // Given
                beforeEach {
                    spy = SearchGamePresentationLogicSpy()
                    workerSpy = SearchGameWorkerSpy(SearchGameMemRepository())
                    request = SearchGame.SearchForGame.Request(query: "")
                    self.sut.presenter = spy
                    self.sut.worker = workerSpy
                    self.sut.searchForGame(request: request)
                }

                // Then
                it("should ask its worker to search for the game") {
                    expect { workerSpy.searchGameCalled }
                        .to(beTrue())
                }

                // Then
                it("should ask to present the search results") {
                    expect { spy.presentSearchForGameResultsCalled }
                        .to(beTrue())
                }
            }
        }
    }
}
