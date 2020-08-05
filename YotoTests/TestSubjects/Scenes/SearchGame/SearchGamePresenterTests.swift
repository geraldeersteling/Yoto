//
//  SearchGamePresenterTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 13/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Cuckoo
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

    func stubDisplayLogic(_ logic: MockSearchGameDisplayLogic) {
        stub(logic) { mock in
            when(mock).displaySearchForGameResults(viewModel: any()).thenDoNothing()
        }
    }

    // MARK: Tests

    override func spec() {
        describe("The presenter") {
            let logic = MockSearchGameDisplayLogic()

            beforeEach {
                self.stubDisplayLogic(logic)
                self.setupSearchGamePresenter()
                self.sut.viewController = logic
            }

            afterEach {
                reset(logic)
            }

            context("when asked to present the search results") {
                var results = [SearchGame.SearchForGame.ViewModel.DisplayedGame]()
                var response: SearchGame.SearchForGame.Response!

                // Given
                beforeEach {
                    stub(logic) { mock in
                        when(mock)
                            .displaySearchForGameResults(viewModel: any())
                            .then { results = $0.results }
                    }
                    response = SearchGame.SearchForGame.Response(results: GameSeeds.seeds)
                    self.sut.presentSearchForGameResults(response: response)
                }

                // Then
                it("should format the results properly") {
                    expect { results.isEmpty }
                        .to(beFalse())
                    expect { results.first!.name }
                        .to(contain(GameSeeds.firstSeed.name))
                }

                // Then
                it("should ask to display the search results") {
                    verify(logic).displaySearchForGameResults(viewModel: any())
                }
            }
        }
    }
}
