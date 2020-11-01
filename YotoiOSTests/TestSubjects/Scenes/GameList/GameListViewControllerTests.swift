//
//  GameListViewControllerTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Cuckoo
import Nimble
import Quick
import Resolver
import XCTest
@testable import YotoiOS

class GameListViewControllerTests: QuickSpec {
    // MARK: Subject under test

    var sut: GameListViewController!
    var window: UIWindow!

    // MARK: Test setup

    func setupDependencyInjection() {}

    func loadView() {
        window.addSubview(sut.view)
        RunLoop.current.run(until: Date())
    }

    // MARK: Test doubles

    class TableViewSpy: UITableView {
        var reloadDataCalled = false

        override func reloadData() {
            reloadDataCalled = true
        }
    }

    // MARK: Tests

    override func spec() {
        setupDependencyInjection()

        describe("The viewcontroller") {
            beforeEach {
                self.window = UIWindow()
                self.sut = Resolver.optional()
            }
            afterEach {
                self.window = nil
            }

            context("when the view is loaded") {
                // Given
                beforeEach {
                    self.loadView()
                }

                // Then
                it("should do something") {}
            }

            context("when asked to display the list of games") {
                var tableviewSpy: TableViewSpy!

                // Given
                beforeEach {
                    self.loadView()
                }

                // Then
                it("should reload the table to display all the games") {
                    tableviewSpy = TableViewSpy()
                    //self.sut.tableView = tableviewSpy

                    expect { tableviewSpy.reloadDataCalled }
                        .to(beTrue())
                }

                // Then
                it("should display all games from the list") {
//                    expect { self.sut.tableView(self.sut.tableView, numberOfRowsInSection: 0) }
//                        .to(equal(someCount))
                }

                // Then
                it("should properly display the game in each cell") {
//                    let cell = self.sut.tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as! GameListTableViewCell
//                    expect { cell.nameLabel.text }
//                        .to(contain(seed.name))
                }
            }

            context("when a game is selected in the list") {
                // Given
                beforeEach {
                    self.loadView()
                }

                it("should navigate to the game details") {
//                    let tableView = self.sut.tableView
//                    tableView?.delegate?.tableView?(tableView!, didSelectRowAt: IndexPath(row: 0, section: 0))
//                    verify(router).routeToGameDetails()
                }
            }
        }
    }
}
