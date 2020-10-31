//
//  KeychainTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 27/10/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Nimble
import Quick
import XCTest
@testable import Yoto

class KeychainTests: QuickSpec {
    // MARK: Subject under test

    // MARK: Test setup

    // MARK: Tests

    override func spec() {
        describe("The Keychain") {
            beforeEach {
                KeychainSeeds.resetAllSeeds()
            }

            it("should be able to properly store items") {
                let seed = KeychainSeeds.firstSeed

                // First check to see that there currently is _no_ keychain item
                expect { try? Keychain.retrieveItem(forAttributes: seed) }
                    .to(beNil())

                // Afterwards proceed to store an item
                expect { try Keychain.store(seed.item.data(using: .utf8)!, withAttributes: seed) }
                    .toNot(throwError())

                // Retrieve the stored item and check if it is the correct one; if so, it means storing succeeded
                // - Note: The test below seems redundant with the test 'it("should be able to retrieve the item")',
                //         except that we do not care about error handling here (hence; the try?)
                guard
                    let data = try? Keychain.retrieveItem(forAttributes: seed),
                    let item = String(data: data, encoding: .utf8)
                else { fail("Couldn't convert the retrieved keychain data to the expected item"); return }

                expect { item }
                    .to(contain(seed.item))
            }

            context("with a stored item") {
                beforeEach {
                    let seed = KeychainSeeds.firstSeed
                    try? Keychain.store(seed.item.data(using: .utf8)!, withAttributes: seed)
                }

                it("should just update the stored item when needed") {
                    let seed = KeychainSeeds.firstSeed
                    let newItem = "newItem"

                    expect { try Keychain.store(newItem.data(using: .utf8)!, withAttributes: seed) }
                        .toNot(throwError())

                    guard
                        let itemData = try? Keychain.retrieveItem(forAttributes: seed),
                        let item = String(data: itemData, encoding: .utf8)
                    else { fail("Couldn't convert the retrieved keychain data to the expected item"); return }

                    expect { item }
                        .to(contain(newItem))
                }

                it("should be able to retrieve the item") {
                    let seed = KeychainSeeds.firstSeed
                    var retrievedData: Data?
                    expect { retrievedData = try Keychain.retrieveItem(forAttributes: seed) }
                        .toNot(throwError())

                    guard
                        let itemData = retrievedData,
                        let item = String(data: itemData, encoding: .utf8)
                    else { fail("Couldn't convert the retrieved keychain data to the expected item"); return }

                    expect { item }
                        .to(contain(seed.item))
                }

                it("should be able to delete the item") {
                    let seed = KeychainSeeds.firstSeed

                    expect { try Keychain.deleteItem(withAttributes: seed) }
                        .toNot(throwError())
                    expect { try Keychain.retrieveItem(forAttributes: seed) }
                        .to(beNil())
                }
            }
        }
    }
}
