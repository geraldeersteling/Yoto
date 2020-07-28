//
//  SearchGameViewControllerTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 13/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Nimble
import Quick
import XCTest
@testable import Yoto

class SearchGameViewControllerTests: QuickSpec {
    // MARK: Subject under test

    var sut: SearchGameViewController!
    var window: UIWindow!

    // MARK: Test lifecycle

    override func setUp() {
        super.setUp()
        window = UIWindow()
        setupSearchGameViewController()
    }

    override func tearDown() {
        window = nil
        super.tearDown()
    }

    // MARK: Test setup

    func setupSearchGameViewController() {
        sut = SearchGameViewController(nibName: nil, bundle: Bundle.main)
    }

    func loadView() {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }

    // MARK: Test doubles

    class SearchGameBusinessLogicSpy: SearchGameBusinessLogic {
        var searchForGameCalled = false

        func searchForGame(request: SearchGame.SearchForGame.Request) {
            searchForGameCalled = true
        }
    }

    class TableViewSpy: UITableView {
        var reloadDataCalled = false

        override func reloadData() {
            reloadDataCalled = true
        }
    }

    class SearchGameRouterSpy: SearchGameRouter {
        var routeToGameDetailsCalled = false

        override func routeToGameDetails() {
            routeToGameDetailsCalled = true
        }

    }

    // MARK: Tests

    override func spec() {
        describe("The viewcontroller") {
            beforeEach {
                self.window = UIWindow()
                self.setupSearchGameViewController()
            }
            afterEach {
                self.window = nil
            }

            context("when a search query is entered") {
                var spy: SearchGameBusinessLogicSpy!

                // Given
                beforeEach {
                    spy = SearchGameBusinessLogicSpy()
                    self.sut.interactor = spy
                    self.loadView()
                    let controller = self.sut.navigationItem.searchController
                    controller?.searchBar.text = "Some game"
                    controller?.searchResultsUpdater?.updateSearchResults(for: controller!)
                }

                // Then
                it("should ask the interactor to search for a game") {
                    expect { spy.searchForGameCalled }
                        .to(beTrue())
                }
            }

            context("when asked to display the results") {
                var spy: TableViewSpy!
                var viewModel: SearchGame.SearchForGame.ViewModel!

                // Given
                beforeEach {
                    spy = TableViewSpy()
                    viewModel = GameSeeds.ViewModels.searchGameSearchForGame

                    self.sut.tableView = spy
                    self.loadView()
                    self.sut.displaySearchForGameResults(viewModel: viewModel)
                }

                // Then
                it("should refresh the list with the results") {
                    expect { spy.reloadDataCalled }
                        .to(beTrue())

                }
            }

            context("when selecting a game from the list") {
                var spy: SearchGameRouterSpy!
                var viewModel: SearchGame.SearchForGame.ViewModel!

                beforeEach {
                    spy = SearchGameRouterSpy()
                    viewModel = GameSeeds.ViewModels.searchGameSearchForGame

                    self.sut.router = spy
                    self.loadView()
                    self.sut.displaySearchForGameResults(viewModel: viewModel)
                }

                it("should navigate to the game's details") {
                    let tableView = self.sut.tableView!
                    tableView.delegate?.tableView?(tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
                    expect { spy.routeToGameDetailsCalled }
                        .to(beTrue())
                }
            }
        }
    }
}
