//
//  GameDetailsViewControllerTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 12/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Nimble
import Quick
import XCTest
@testable import Yoto

class GameDetailsViewControllerTests: QuickSpec {
    // MARK: Subject under test

    var sut: GameDetailsViewController!
    var window: UIWindow!

    // MARK: Test setup

    func setupGameDetailsViewController() {
        sut = GameDetailsViewController(nibName: nil, bundle: Bundle.main)
    }

    func loadView() {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }

    // MARK: Test doubles

    class GameDetailsBusinessLogicSpy: GameDetailsBusinessLogic {
        var getGameCalled = false

        func getGame(request: GameDetails.GetGame.Request) {
            getGameCalled = true
        }
    }

    // MARK: Tests

    override func spec() {
        describe("The ViewController") {
            var spy: GameDetailsBusinessLogicSpy!

            beforeEach {
                self.window = UIWindow()
                self.setupGameDetailsViewController()
                spy = GameDetailsBusinessLogicSpy()
                self.sut.interactor = spy
            }
            afterEach {
                self.window = nil
            }

            context("When the view is loaded") {

                // Given
                beforeEach {
                    self.loadView()
                }

                // Then
                it("should ask the interactor to get the game") {
                    expect { spy.getGameCalled }
                        .to(beTrue())
                }
            }

            context("When asked to display a game") {
                let model = GameSeeds.ViewModels.gameDetailsGetGame

                // Given
                beforeEach {
                    self.loadView()
                    self.sut.displayGame(viewModel: model)
                }

                // Then
                it("should properly show the game's details") {
                    expect { self.sut.nameLabel.text! }
                        .to(contain(model.displayedGame.name))
                }
            }
        }
    }
}
