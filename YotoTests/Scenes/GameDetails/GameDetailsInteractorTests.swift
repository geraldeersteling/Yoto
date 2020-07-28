//
//  GameDetailsInteractorTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 12/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Nimble
import Quick
import XCTest
@testable import Yoto

class GameDetailsInteractorTests: QuickSpec {
    // MARK: Subject under test

    var sut: GameDetailsInteractor!

    // MARK: Test lifecycle

    override func setUp() {
        super.setUp()
        setupGameDetailsInteractor()
    }

    override func tearDown() {
        super.tearDown()
    }

    // MARK: Test setup

    func setupGameDetailsInteractor() {
        sut = GameDetailsInteractor()
        sut.game = GameSeeds.seed
    }

    // MARK: Test doubles

    class GameDetailsPresentationLogicSpy: GameDetailsPresentationLogic {
        var presentGameCalled = false

        func presentGame(response: GameDetails.GetGame.Response) {
            presentGameCalled = true
        }
    }

    // MARK: Tests

    override func spec() {
        describe("The interactor") {
            beforeEach {
                self.setupGameDetailsInteractor()
            }

            context("When asked for a game") {
                var spy: GameDetailsPresentationLogicSpy!
                var request: GameDetails.GetGame.Request!

                // Given
                beforeEach {
                    spy = GameDetailsPresentationLogicSpy()
                    request = GameDetails.GetGame.Request()
                    self.sut.presenter = spy
                }

                // Then
                it("should eventually ask the presenter to present it") {
                    self.sut.getGame(request: request)
                    expect { spy.presentGameCalled }
                        .to(beTrue())
                }
            }
        }
    }
}
