//
//  SearchGamePresenterTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 13/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Nimble
import Quick
import XCTest
@testable import Yoto

class SearchGamePresenterTests: QuickSpec {
    // MARK: Subject under test

    var sut: SearchGamePresenter!

    // MARK: Test setup

    func setupSearchGamePresenter() {
        sut = SearchGamePresenter()
    }

    // MARK: Test doubles

    class SearchGameDisplayLogicSpy: SearchGameDisplayLogic {
        var displaySearchForGameResultsCalled = false
        var searchForGameModel: SearchGame.SearchForGame.ViewModel!

        func displaySearchForGameResults(viewModel: SearchGame.SearchForGame.ViewModel) {
            displaySearchForGameResultsCalled = true
            searchForGameModel = viewModel
        }
    }

    // MARK: Tests

    override func spec() {
        describe("The presenter") {
            beforeEach {
                self.setupSearchGamePresenter()
            }

            context("when asked to present the search results") {
                var spy: SearchGameDisplayLogicSpy!
                var response: SearchGame.SearchForGame.Response!

                // Given
                beforeEach {
                    spy = SearchGameDisplayLogicSpy()
                    self.sut.viewController = spy
                    response = SearchGame.SearchForGame.Response(results: GameSeeds.seeds)
                    self.sut.presentSearchForGameResults(response: response)
                }

                // Then
                it("should format the results properly") {
                    expect { spy.searchForGameModel.results.isEmpty }
                        .to(beFalse())
                    expect { spy.searchForGameModel.results.first!.name }
                        .to(contain(GameSeeds.seed.name))
                }

                // Then
                it("should ask to display the search results") {
                    expect { spy.displaySearchForGameResultsCalled }
                        .to(beTrue())
                }
            }
        }
    }
}
