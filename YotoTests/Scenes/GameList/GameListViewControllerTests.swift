//
//  GameListViewControllerTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Nimble
import Quick
import XCTest
@testable import Yoto

class GameListViewControllerTests: QuickSpec {
    // MARK: Subject under test

    var sut: GameListViewController!
    var window: UIWindow!

    // MARK: Test lifecycle

    override func setUp() {
        super.setUp()
        window = UIWindow()
        setupGameListViewController()
    }

    override func tearDown() {
        window = nil
        super.tearDown()
    }

    // MARK: Test setup

    func setupGameListViewController() {
        sut = GameListViewController(nibName: nil, bundle: Bundle.main)
    }

    func loadView() {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }

    // MARK: Test doubles

    class GameListBusinessLogicSpy: GameListBusinessLogic {
        var getListCalled = false

        func getList(request: GameList.GetList.Request) {
            getListCalled = true
        }
    }

    class GameListRouterSpy: GameListRouter {
        var routeToGameDetailsCalled = false

        override func routeToGameDetails() {
            routeToGameDetailsCalled = true
        }

    }

    class TableViewSpy: UITableView {
        var reloadDataCalled = false

        override func reloadData() {
            reloadDataCalled = true
        }
    }

    // MARK: Tests

    override func spec() {
        describe("The viewcontroller") {
            beforeEach {
                self.window = UIWindow()
                self.setupGameListViewController()
            }
            afterEach {
                self.window = nil
            }

            context("when the view is loaded") {
                var spy: GameListBusinessLogicSpy!

                // Given
                beforeEach {
                    spy = GameListBusinessLogicSpy()
                    self.sut.interactor = spy
                    self.loadView()
                }

                // Then
                it("should ask for the list of games") {
                    expect { spy.getListCalled }.to(beTrue())
                }
            }

            context("when asked to display the list of games") {
                var tableviewSpy: TableViewSpy!
                var viewModel: GameList.GetList.ViewModel!

                // Given
                beforeEach {
                    viewModel = GameList.GetList.ViewModel(displayedGames: [
                        GameList.GetList.ViewModel.DisplayedGame(name: "Game 1")
                    ])
                    self.loadView()
                }

                // Then
                it("should reload the table to display all the games") {
                    tableviewSpy = TableViewSpy()
                    self.sut.tableView = tableviewSpy
                    self.sut.displayGameList(viewModel: viewModel)

                    expect { tableviewSpy.reloadDataCalled }
                        .to(beTrue())
                }

                // Then
                it("should display all games from the list") {
                    self.sut.displayGameList(viewModel: viewModel)

                    expect { self.sut.tableView(self.sut.tableView, numberOfRowsInSection: 0) }
                        .to(equal(viewModel.displayedGames.count))
                }

                // Then
                it("should properly display the game in each cell") {
                    self.sut.displayGameList(viewModel: viewModel)
                    
                    let cell = self.sut.tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as! GameListTableViewCell
                    expect { cell.nameLabel.text }
                        .to(contain(self.sut.gameList[0].name))
                }
            }

            context("when a game is selected in the list") {
                var spy:GameListRouterSpy!
                var viewModel: GameList.GetList.ViewModel!

                // Given
                beforeEach {
                    spy = GameListRouterSpy()
                    viewModel = GameSeeds.ViewModels.gameListGetList
                    self.loadView()
                }

                it("should navigate to the game details") {
                    self.sut.router = spy
                    self.sut.displayGameList(viewModel: viewModel)
                    let tableView = self.sut.tableView
                    tableView?.delegate?.tableView?(tableView!, didSelectRowAt: IndexPath(row: 0, section: 0))
                    expect { spy.routeToGameDetailsCalled }
                        .to(beTrue())
                }
            }
        }
    }
}
