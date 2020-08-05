//
//  SearchGameInteractorTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 13/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Cuckoo
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

    func stubRepository(_ repo: MockGamesRepository) {
        stub(repo) { mock in
            when(mock)
                .searchGames(any(), completion: any())
                .then { $1(GameSeeds.seeds) }
        }
    }

    func stubPresentationLogic(_ logic: MockSearchGamePresentationLogic) {
        stub(logic) { mock in
            when(mock).presentSearchForGameResults(response: any()).thenDoNothing()
        }
    }

    // MARK: Tests

    override func spec() {
        describe("The interactor") {
            let repo = MockGamesRepository()
            let logic = MockSearchGamePresentationLogic()

            beforeEach {
                self.stubRepository(repo)
                self.stubPresentationLogic(logic)
                self.setupSearchGameInteractor()
                self.sut.presenter = logic
                self.sut.repository = repo
            }
            afterEach {
                reset(repo, logic)
            }

            context("when asked to search for a game") {
                var request: SearchGame.SearchForGame.Request!

                // Given
                beforeEach {
                    request = SearchGame.SearchForGame.Request(query: "")
                    self.sut.searchForGame(request: request)
                }

                // Then
                it("should ask the repo to search for the game") {
                    verify(repo).searchGames(any(), completion: any())
                }

                // Then
                it("should ask to present the search results") {
                    verify(logic).presentSearchForGameResults(response: any())
                }
            }
        }
    }
}
