//
//  GameDetailsWorkerTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 12/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Nimble
import Quick
import XCTest
@testable import Yoto

class GameDetailsWorkerTests: QuickSpec {
    // MARK: Subject under test

    var sut: GameDetailsWorker!

    // MARK: Test setup

    func setupGameDetailsWorker() {
        sut = GameDetailsWorker()
    }

    // MARK: Test doubles

    // MARK: Tests

    override func spec() {
        describe("something") {
            beforeEach {
                self.setupGameDetailsWorker()
            }
            context("in context") {
                it("should so something") {}
            }
        }
    }
}
