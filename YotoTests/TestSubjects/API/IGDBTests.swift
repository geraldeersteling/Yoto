//
//  IGDBTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 22/10/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Nimble
import OHHTTPStubs
import Quick
import Resolver
import RxSwift
import RxTest
import XCTest
@testable import Yoto

class IGDBTests: QuickSpec {
    // MARK: Subject under test

    var sut: IGDB!
    let registrationName = "unittest.IGDB"

    var concurrentScheduler: ConcurrentDispatchQueueScheduler!
    var bag: DisposeBag!

    // MARK: Test setup
    func setupDependencyInjection() {
        Resolver.register(name: registrationName) { IGDB() }
            .scope(Resolver.cached)
    }

    // MARK: Tests

    override func spec() {
        setupDependencyInjection()

        describe("The IGDB api") {
            beforeEach {
                HTTPStubs.onStubMissing {
                    fail("Encountered a request to \($0) which shouldn't happen")
                }
            }

            afterEach {
                Resolver.cached.reset()
                HTTPStubs.removeAllStubs()
                HTTPStubs.onStubActivation(nil)
                HTTPStubs.onStubMissing(nil)
                self.sut = nil
            }

            context("with no accesstoken yet") {

                // Given
                beforeEach {
                    try? Keychain.deleteItem(withAttributes: IGDBKeychainAttributes.OAuth())
                    let stubName = TwitchTargetStub.stubRetrieveAccessToken()

                    HTTPStubs.onStubActivation { _, stub, _ in
                        guard stub.name == stubName
                        else { fail("A stub activated (\(String(describing: stub.name)) while not expected"); return }
                    }
                }

                // Then
                it("should fetch and store the access token when asked") {
                    // Creating IGDB has a side effect of automatically preparing the access token
                    self.sut = Resolver.optional(name: self.registrationName)

                    expect { self.sut.accessToken }
                        .toEventually(contain(TwitchSeeds.accessToken))
                }
            }

            context("with an accesstoken in the keychain") {
                // Given
                beforeEach {
                    try? Keychain.store(TwitchSeeds.accessToken.data(using: .utf8)!,
                                        withAttributes: IGDBKeychainAttributes.OAuth())
                }

                it("should return the access token without fetching it from Twitch") {
                    // Creating IGDB has a side effect of automatically preparing the access token
                    self.sut = Resolver.optional(name: self.registrationName)

                    expect { self.sut.accessToken }
                        .toEventually(contain(TwitchSeeds.accessToken))
                }
            }
        }
    }
}
