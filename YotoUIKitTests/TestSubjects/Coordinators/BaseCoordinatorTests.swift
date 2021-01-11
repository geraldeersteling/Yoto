//
//  BaseCoordinatorTests.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/01/2021.
//  Copyright (c) 2021 Rockstars. All rights reserved.

import Nimble
import Quick
import RxBlocking
import RxTest
import XCTest
import RxSwift
import Cuckoo
@testable import Yoto
@testable import YotoUIKit
@testable import YotoTestSupport

class BaseCoordinatorTests: QuickSpec {
    // MARK: Subject under test

    var sut: BaseCoordinator!
    var child: MockBaseCoordinator!

    // MARK: Test setup

    func setupBaseCoordinator() {
        // Optional setup of the sut
    }

    func generateMockChildCoordinator() -> MockBaseCoordinator {
        let child = MockBaseCoordinator()
        child.enableDefaultImplementation(BaseCoordinator())
        stub(child) { mock in
            when(mock.start()).thenDoNothing()
            when(mock.coordinatorStatus.get)
                .thenReturn(PublishSubject<CoordinatorStatus>())
        }
        return child
    }

    func stubChildCoordinator(_ child: MockBaseCoordinator) {

    }

    // MARK: Tests

    override func spec() {
        beforeEach {
            self.sut = BaseCoordinator()
        }

        afterEach {
            self.sut = nil
        }

        describe("The BaseCoordinator") {
            beforeEach {
                self.setupBaseCoordinator()
            }

            it("should crash if the start-method is not overridden") {
                expect { self.sut.start() }
                    .to(throwAssertion())
            }

            context("using a child-coordinator") {
                // Given
                beforeEach {
                    self.child = self.generateMockChildCoordinator()
                }

                afterEach {
                    self.child = nil
                }

                // Then
                it("should append itself as parent if started with a child") {
                    self.sut.start(self.child)
                    expect { self.child.parent }
                        .to(be(self.sut))
                }

                context("reacting to child statuses") {

                    // Given
                    beforeEach {
                        self.sut.start(self.child)
                    }

                    context(".didFinish") {

                        it("should remove the child automatically by default") {
                            self.child.coordinatorStatus.onNext(.didFinish)
                            expect { self.child.parent }
                                .to(beNil())
                        }

                        it("should not remove the child if not required") {
                            self.sut.removeChildsAutomatically = false
                            self.child.coordinatorStatus.onNext(.didFinish)
                            expect { self.child.parent }
                                .toNot(beNil())
                            expect { self.sut.childCoordinators.firstIndex(where: { $0 === self.child }) }
                                .toNot(beNil())
                        }
                    }
                }
            }
        }
    }
}
