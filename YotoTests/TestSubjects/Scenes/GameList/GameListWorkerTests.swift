//
//  GameListWorkerTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
@testable import Yoto
import XCTest
import Quick
import Nimble

class GameListWorkerTests: QuickSpec {
    // MARK: Subject under test

    var sut: GameListWorker!

    // MARK: Test setup

    func setupGameListWorker() {
        sut = GameListWorker(withRepository: GameListRepositoryMock())
    }

    // MARK: Test doubles
    class GameListRepositoryMock: GameListRepository {
        func getGames(completion: ([Game]) -> Void) {
            completion(GameSeeds.seeds)
        }
    }

    // MARK: Tests

    override func spec() {
        describe("The worker") {
            beforeEach {
                self.setupGameListWorker()
            }
            
            context("when asked for a list of games") {

                // Then
                it("should return a list of games") {
                    self.sut.getGames { games in
                        expect { games }
                            .to(contain(GameSeeds.seeds))
                    }
                }
            }
        }
    }
}
