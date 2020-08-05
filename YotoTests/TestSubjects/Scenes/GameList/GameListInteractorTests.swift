//
//  GameListInteractorTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

@testable import Yoto
import XCTest
import Quick
import Nimble

class GameListInteractorTests: QuickSpec {
    // MARK: Subject under test

    var sut: GameListInteractor!

    // MARK: Test setup

    func setupGameListInteractor() {
        sut = GameListInteractor()
    }

    // MARK: Test doubles

    class GameListPresentationLogicSpy: GameListPresentationLogic {
        var presentGameListCalled = false

        func presentGameList(response: GameList.GetList.Response) {
            presentGameListCalled = true
        }
    }

    class GameListWorkerSpy: GameListWorker {
        var getGamesCalled = false

        override func getGames(completion: ([Game]) -> Void) {
            getGamesCalled = true
            completion(GameSeeds.seeds)
        }
    }

    // MARK: Tests

    override func spec() {
        describe("The interactor") {
            beforeEach {
                self.setupGameListInteractor()
            }

            context("when asked to get the list of games") {
                var spy: GameListPresentationLogicSpy!
                var workerSpy: GameListWorkerSpy!
                var request: GameList.GetList.Request!

                // Given
                beforeEach {
                    spy = GameListPresentationLogicSpy()
                    workerSpy = GameListWorkerSpy(withRepository: GameListMemRepository())
                    request = GameList.GetList.Request()
                    self.sut.presenter = spy
                    self.sut.worker = workerSpy
                }

                // Then
                it("should eventually ask the presenter to present the list") {
                    self.sut.getList(request: request)
                    expect { spy.presentGameListCalled }
                        .to(beTrue())
                }

                // Then
                it("should ask its worker to get the list of games") {
                    self.sut.getList(request: request)
                    expect { workerSpy.getGamesCalled }
                        .to(beTrue())
                }
            }
        }
    }
}
