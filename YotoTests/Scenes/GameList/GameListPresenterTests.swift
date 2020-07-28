//
//  GameListPresenterTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

@testable import Yoto
import XCTest
import Quick
import Nimble

class GameListPresenterTests: QuickSpec {
    // MARK: Subject under test

    var sut: GameListPresenter!

    // MARK: Test setup

    func setupGameListPresenter() {
        sut = GameListPresenter()
    }

    // MARK: Test doubles

    class GameListDisplayLogicSpy: GameListDisplayLogic {
        var displayGameListCalled = false
        var displayedGames: [GameList.GetList.ViewModel.DisplayedGame]!

        func displayGameList(viewModel: GameList.GetList.ViewModel) {
            displayGameListCalled = true
            displayedGames = viewModel.displayedGames
        }
    }

    // MARK: Tests

    override func spec() {
        describe("The presenter") {
            beforeEach {
                self.setupGameListPresenter()
            }

            context("when asked to present the list of games") {
                var spy: GameListDisplayLogicSpy!
                var response: GameList.GetList.Response!

                // Given
                beforeEach {
                    spy = GameListDisplayLogicSpy()
                    response = GameList.GetList.Response(games: GameSeeds.seeds)
                    self.sut.viewController = spy
                }

                // Then
                it("should eventually tell the viewcontroller to display the list of games") {
                    self.sut.presentGameList(response: response)
                    expect { spy.displayGameListCalled }
                        .to(beTrue())
                }

                // Then
                it("should properly format displayed games") {
                    self.sut.presentGameList(response: response)

                    for displayedGame in spy.displayedGames {
                        expect { displayedGame.name }
                            .toNot(beNil())
                    }
                }
            }
        }
    }
}
