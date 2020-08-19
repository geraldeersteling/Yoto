// MARK: - Mocks generated from file: Yoto/Sources/Scenes/SearchGameDetails/SearchGameDetailsInteractor.swift at 2020-08-19 13:10:15 +0000

//
//  SearchGameDetailsInteractor.swift
//  Yoto
//
//  Created by Gerald Eersteling on 03/08/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockSearchGameDetailsBusinessLogic: SearchGameDetailsBusinessLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = SearchGameDetailsBusinessLogic
    
     typealias Stubbing = __StubbingProxy_SearchGameDetailsBusinessLogic
     typealias Verification = __VerificationProxy_SearchGameDetailsBusinessLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SearchGameDetailsBusinessLogic?

     func enableDefaultImplementation(_ stub: SearchGameDetailsBusinessLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

	 struct __StubbingProxy_SearchGameDetailsBusinessLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	 struct __VerificationProxy_SearchGameDetailsBusinessLogic: Cuckoo.VerificationProxy {
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

 class SearchGameDetailsBusinessLogicStub: SearchGameDetailsBusinessLogic {
    

    

    
}



 class MockSearchGameDetailsDataStore: SearchGameDetailsDataStore, Cuckoo.ProtocolMock {
    
     typealias MocksType = SearchGameDetailsDataStore
    
     typealias Stubbing = __StubbingProxy_SearchGameDetailsDataStore
     typealias Verification = __VerificationProxy_SearchGameDetailsDataStore

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SearchGameDetailsDataStore?

     func enableDefaultImplementation(_ stub: SearchGameDetailsDataStore) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var game: Game! {
        get {
            return cuckoo_manager.getter("game",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.game)
        }
        
        set {
            cuckoo_manager.setter("game",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.game = newValue)
        }
        
    }
    

    

    

	 struct __StubbingProxy_SearchGameDetailsDataStore: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var game: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockSearchGameDetailsDataStore, Game> {
	        return .init(manager: cuckoo_manager, name: "game")
	    }
	    
	    
	}

	 struct __VerificationProxy_SearchGameDetailsDataStore: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var game: Cuckoo.VerifyOptionalProperty<Game> {
	        return .init(manager: cuckoo_manager, name: "game", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class SearchGameDetailsDataStoreStub: SearchGameDetailsDataStore {
    
    
     var game: Game! {
        get {
            return DefaultValueRegistry.defaultValue(for: (Game?).self)
        }
        
        set { }
        
    }
    

    

    
}



 class MockSearchGameDetailsInteractor: SearchGameDetailsInteractor, Cuckoo.ClassMock {
    
     typealias MocksType = SearchGameDetailsInteractor
    
     typealias Stubbing = __StubbingProxy_SearchGameDetailsInteractor
     typealias Verification = __VerificationProxy_SearchGameDetailsInteractor

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SearchGameDetailsInteractor?

     func enableDefaultImplementation(_ stub: SearchGameDetailsInteractor) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var presenter: SearchGameDetailsPresentationLogic? {
        get {
            return cuckoo_manager.getter("presenter",
                superclassCall:
                    
                    super.presenter
                    ,
                defaultCall: __defaultImplStub!.presenter)
        }
        
        set {
            cuckoo_manager.setter("presenter",
                value: newValue,
                superclassCall:
                    
                    super.presenter = newValue
                    ,
                defaultCall: __defaultImplStub!.presenter = newValue)
        }
        
    }
    
    
    
     override var worker: SearchGameDetailsWorker? {
        get {
            return cuckoo_manager.getter("worker",
                superclassCall:
                    
                    super.worker
                    ,
                defaultCall: __defaultImplStub!.worker)
        }
        
        set {
            cuckoo_manager.setter("worker",
                value: newValue,
                superclassCall:
                    
                    super.worker = newValue
                    ,
                defaultCall: __defaultImplStub!.worker = newValue)
        }
        
    }
    
    
    
     override var game: Game! {
        get {
            return cuckoo_manager.getter("game",
                superclassCall:
                    
                    super.game
                    ,
                defaultCall: __defaultImplStub!.game)
        }
        
        set {
            cuckoo_manager.setter("game",
                value: newValue,
                superclassCall:
                    
                    super.game = newValue
                    ,
                defaultCall: __defaultImplStub!.game = newValue)
        }
        
    }
    

    

    

	 struct __StubbingProxy_SearchGameDetailsInteractor: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var presenter: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameDetailsInteractor, SearchGameDetailsPresentationLogic> {
	        return .init(manager: cuckoo_manager, name: "presenter")
	    }
	    
	    
	    var worker: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameDetailsInteractor, SearchGameDetailsWorker> {
	        return .init(manager: cuckoo_manager, name: "worker")
	    }
	    
	    
	    var game: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameDetailsInteractor, Game> {
	        return .init(manager: cuckoo_manager, name: "game")
	    }
	    
	    
	}

	 struct __VerificationProxy_SearchGameDetailsInteractor: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var presenter: Cuckoo.VerifyOptionalProperty<SearchGameDetailsPresentationLogic> {
	        return .init(manager: cuckoo_manager, name: "presenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var worker: Cuckoo.VerifyOptionalProperty<SearchGameDetailsWorker> {
	        return .init(manager: cuckoo_manager, name: "worker", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var game: Cuckoo.VerifyOptionalProperty<Game> {
	        return .init(manager: cuckoo_manager, name: "game", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class SearchGameDetailsInteractorStub: SearchGameDetailsInteractor {
    
    
     override var presenter: SearchGameDetailsPresentationLogic? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameDetailsPresentationLogic?).self)
        }
        
        set { }
        
    }
    
    
     override var worker: SearchGameDetailsWorker? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameDetailsWorker?).self)
        }
        
        set { }
        
    }
    
    
     override var game: Game! {
        get {
            return DefaultValueRegistry.defaultValue(for: (Game?).self)
        }
        
        set { }
        
    }
    

    

    
}

