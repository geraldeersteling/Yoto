// MARK: - Mocks generated from file: Yoto/Sources/Scenes/GameDetails/GameDetailsWorker.swift at 2020-08-20 10:19:38 +0000

//
//  GameDetailsWorker.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Cuckoo
@testable import Yoto

import UIKit


 class MockGameDetailsWorker: GameDetailsWorker, Cuckoo.ClassMock {
    
     typealias MocksType = GameDetailsWorker
    
     typealias Stubbing = __StubbingProxy_GameDetailsWorker
     typealias Verification = __VerificationProxy_GameDetailsWorker

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameDetailsWorker?

     func enableDefaultImplementation(_ stub: GameDetailsWorker) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func doSomeWork()  {
        
    return cuckoo_manager.call("doSomeWork()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.doSomeWork()
                ,
            defaultCall: __defaultImplStub!.doSomeWork())
        
    }
    

	 struct __StubbingProxy_GameDetailsWorker: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func doSomeWork() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGameDetailsWorker.self, method: "doSomeWork()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameDetailsWorker: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func doSomeWork() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("doSomeWork()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameDetailsWorkerStub: GameDetailsWorker {
    

    

    
     override func doSomeWork()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

