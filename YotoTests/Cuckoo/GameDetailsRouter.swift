// MARK: - Mocks generated from file: Yoto/Sources/Scenes/GameDetails/GameDetailsRouter.swift at 2020-08-19 13:10:15 +0000

//
//  GameDetailsRouter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockGameDetailsRoutingLogic: GameDetailsRoutingLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = GameDetailsRoutingLogic
    
     typealias Stubbing = __StubbingProxy_GameDetailsRoutingLogic
     typealias Verification = __VerificationProxy_GameDetailsRoutingLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GameDetailsRoutingLogic?

     func enableDefaultImplementation(_ stub: GameDetailsRoutingLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

	 struct __StubbingProxy_GameDetailsRoutingLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	 struct __VerificationProxy_GameDetailsRoutingLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}
}

 class GameDetailsRoutingLogicStub: GameDetailsRoutingLogic {
    

    

    
}



 class MockGameDetailsDataPassing: GameDetailsDataPassing, Cuckoo.ProtocolMock {
    
     typealias MocksType = GameDetailsDataPassing
    
     typealias Stubbing = __StubbingProxy_GameDetailsDataPassing
     typealias Verification = __VerificationProxy_GameDetailsDataPassing

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GameDetailsDataPassing?

     func enableDefaultImplementation(_ stub: GameDetailsDataPassing) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var dataStore: GameDetailsDataStore? {
        get {
            return cuckoo_manager.getter("dataStore",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.dataStore)
        }
        
    }
    

    

    

	 struct __StubbingProxy_GameDetailsDataPassing: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var dataStore: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockGameDetailsDataPassing, GameDetailsDataStore?> {
	        return .init(manager: cuckoo_manager, name: "dataStore")
	    }
	    
	    
	}

	 struct __VerificationProxy_GameDetailsDataPassing: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var dataStore: Cuckoo.VerifyReadOnlyProperty<GameDetailsDataStore?> {
	        return .init(manager: cuckoo_manager, name: "dataStore", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class GameDetailsDataPassingStub: GameDetailsDataPassing {
    
    
     var dataStore: GameDetailsDataStore? {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameDetailsDataStore?).self)
        }
        
    }
    

    

    
}



 class MockGameDetailsRouter: GameDetailsRouter, Cuckoo.ClassMock {
    
     typealias MocksType = GameDetailsRouter
    
     typealias Stubbing = __StubbingProxy_GameDetailsRouter
     typealias Verification = __VerificationProxy_GameDetailsRouter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameDetailsRouter?

     func enableDefaultImplementation(_ stub: GameDetailsRouter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var viewController: GameDetailsViewController? {
        get {
            return cuckoo_manager.getter("viewController",
                superclassCall:
                    
                    super.viewController
                    ,
                defaultCall: __defaultImplStub!.viewController)
        }
        
        set {
            cuckoo_manager.setter("viewController",
                value: newValue,
                superclassCall:
                    
                    super.viewController = newValue
                    ,
                defaultCall: __defaultImplStub!.viewController = newValue)
        }
        
    }
    
    
    
     override var dataStore: GameDetailsDataStore? {
        get {
            return cuckoo_manager.getter("dataStore",
                superclassCall:
                    
                    super.dataStore
                    ,
                defaultCall: __defaultImplStub!.dataStore)
        }
        
        set {
            cuckoo_manager.setter("dataStore",
                value: newValue,
                superclassCall:
                    
                    super.dataStore = newValue
                    ,
                defaultCall: __defaultImplStub!.dataStore = newValue)
        }
        
    }
    

    

    

	 struct __StubbingProxy_GameDetailsRouter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var viewController: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameDetailsRouter, GameDetailsViewController> {
	        return .init(manager: cuckoo_manager, name: "viewController")
	    }
	    
	    
	    var dataStore: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameDetailsRouter, GameDetailsDataStore> {
	        return .init(manager: cuckoo_manager, name: "dataStore")
	    }
	    
	    
	}

	 struct __VerificationProxy_GameDetailsRouter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var viewController: Cuckoo.VerifyOptionalProperty<GameDetailsViewController> {
	        return .init(manager: cuckoo_manager, name: "viewController", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var dataStore: Cuckoo.VerifyOptionalProperty<GameDetailsDataStore> {
	        return .init(manager: cuckoo_manager, name: "dataStore", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class GameDetailsRouterStub: GameDetailsRouter {
    
    
     override var viewController: GameDetailsViewController? {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameDetailsViewController?).self)
        }
        
        set { }
        
    }
    
    
     override var dataStore: GameDetailsDataStore? {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameDetailsDataStore?).self)
        }
        
        set { }
        
    }
    

    

    
}

