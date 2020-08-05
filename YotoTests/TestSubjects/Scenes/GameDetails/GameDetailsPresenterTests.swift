//
//  GameDetailsPresenterTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 12/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Nimble
import Quick
import XCTest
@testable import Yoto

class GameDetailsPresenterTests: QuickSpec {
    // MARK: Subject under test

    var sut: GameDetailsPresenter!

    // MARK: Test lifecycle

    // MARK: Test setup

    func setupGameDetailsPresenter() {
        sut = GameDetailsPresenter()
    }

    // MARK: Test doubles

    class GameDetailsDisplayLogicSpy: GameDetailsDisplayLogic {
        var displayGameCalled = false

        func displayGame(viewModel: GameDetails.GetGame.ViewModel) {
            displayGameCalled = true
        }
    }

    // MARK: Tests

    override func spec() {
        describe("The Presenter") {
            beforeEach {
                self.setupGameDetailsPresenter()
            }

            context("When asked to present a game") {
                var spy: GameDetailsDisplayLogicSpy!
                var response: GameDetails.GetGame.Response!

                // Given
                beforeEach {
                    spy = GameDetailsDisplayLogicSpy()
                    response = GameDetails.GetGame.Response(game: GameSeeds.firstSeed)
                    self.sut.viewController = spy
                }

                // Then
                it("should eventually ask the viewcontroller to display it") {
                    self.sut.presentGame(response: response)
                    expect { spy.displayGameCalled }
                        .to(beTrue())
                }
            }
        }
    }
}
