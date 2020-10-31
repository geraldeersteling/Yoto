// MARK: - Mocks generated from file: YotoKit/Sources/Scenes/GameDetails/GameDetailsViewModel.swift at 2020-10-31 14:33:59 +0000

//
//  GameDetailsViewModel.swift
//  YotoKit
//
//  Created by Gerald Eersteling on 31/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import YotoKit

import Foundation


public class MockGameDetailsViewModel: GameDetailsViewModel, Cuckoo.ClassMock {
    
    public typealias MocksType = GameDetailsViewModel
    
    public typealias Stubbing = __StubbingProxy_GameDetailsViewModel
    public typealias Verification = __VerificationProxy_GameDetailsViewModel

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameDetailsViewModel?

    public func enableDefaultImplementation(_ stub: GameDetailsViewModel) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

	public struct __StubbingProxy_GameDetailsViewModel: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	public struct __VerificationProxy_GameDetailsViewModel: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}
}

public class GameDetailsViewModelStub: GameDetailsViewModel {
    

    

    
}

