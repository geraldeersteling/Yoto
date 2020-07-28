//
//  SearchGameWorkerTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 13/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
@testable import Yoto
import XCTest
import Quick
import Nimble

class SearchGameWorkerTests: QuickSpec {
    // MARK: Subject under test

    var sut: SearchGameWorker!

    // MARK: Test setup

    func setupSearchGameWorker() {
        sut = SearchGameWorker(SearchGameMemRepository())
    }

    // MARK: Test doubles

    // MARK: Tests

    override func spec() {
        describe("The worker") {
            beforeEach {
                self.setupSearchGameWorker()
            }
            
            context("in context") {
                it("should do something") {

                }
            }
        }
    }
}
