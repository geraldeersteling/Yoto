//
//  SearchGameViewControllerTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 13/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Cuckoo
import Nimble
import OHHTTPStubs
import Quick
import Resolver
import RxCocoa
import RxSwift
@testable import YotoiOS
@testable import YotoKit
@testable import YotoTestSupport

class SearchGameViewControllerTests: QuickSpec {
    // MARK: Subject under test

    var sut: SearchGameViewController!
    var window: UIWindow!

    // MARK: Test Setup

    func mockDependencyInjection() {
        Resolver.register { MockSearchGameRouter() as SearchGameRoutingLogic }
        Resolver.register(name: Resolver.RepositoryNames.SearchGames.remote.rawValue) { MockSearchGamesRepository() as SearchGamesRepository }
        Resolver.register {
            MockSearchGameViewModel(
                repository: Resolver.optional(name: Resolver.RepositoryNames.SearchGames.remote.rawValue)!
            ) as SearchGameViewModel
        }
    }

    func loadView() {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }

    // MARK: Test doubles

    func stubViewModel(_ model: MockSearchGameViewModel) {
        stub(model) { mock in
            when(mock).isSearching.get.thenReturn(Driver<Bool>.just(false))
            when(mock).searchResults.get.thenReturn(Driver<[TableSectionModel]>.just([]))
            when(mock).searchQuery.get.thenReturn(PublishRelay<String>())
            when(mock).item(at: any()).then { _ in
                return SearchGameSeeds.firstSearchGameTableItem
            }
            when(mock).uriForGame(at: any()).then { _ in
                GameUri(id: 1)
            }
        }
    }

    func stubRouter(_ router: MockSearchGameRouter) {
        stub(router) { mock in
            when(mock).routeToGameSearchDetails(any(), from: any()).thenDoNothing()
        }
    }

    // MARK: Tests

    override func spec() {
        beforeEach {
            self.mockDependencyInjection()
            self.sut = Resolver.optional()
        }

        describe("The viewcontroller") {
            var viewModel: MockSearchGameViewModel!
            var router: MockSearchGameRouter!

            beforeEach {
                self.window = UIWindow()
                viewModel = self.sut.viewModel as? MockSearchGameViewModel
                router = self.sut.router as? MockSearchGameRouter
                self.stubViewModel(viewModel)
                self.stubRouter(router)
                self.loadView()
            }
            afterEach {
                self.window = nil
                reset(viewModel, router)
            }

            context("when asked to display the results") {
                // Given
                beforeEach {}

                // Then
                it("should refresh the list with the results") {}
            }

            context("when selecting a game from the list") {
                beforeEach {
                    self.sut.navigationItem.searchController?.searchBar.text = "any search"
                }

                it("should navigate to the game's details") {
                    let tableView = self.sut.tableView!
                    tableView.delegate?.tableView?(tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
                    verify(router).routeToGameSearchDetails(any(), from: any())
                }
            }
        }
    }
}
