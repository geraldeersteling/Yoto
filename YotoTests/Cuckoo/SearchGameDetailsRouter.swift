// MARK: - Mocks generated from file: Yoto/Sources/Scenes/SearchGameDetails/SearchGameDetailsRouter.swift at 2020-08-19 13:10:15 +0000

//
//  SearchGameDetailsRouter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 03/08/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockSearchGameDetailsRoutingLogic: SearchGameDetailsRoutingLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = SearchGameDetailsRoutingLogic
    
     typealias Stubbing = __StubbingProxy_SearchGameDetailsRoutingLogic
     typealias Verification = __VerificationProxy_SearchGameDetailsRoutingLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SearchGameDetailsRoutingLogic?

     func enableDefaultImplementation(_ stub: SearchGameDetailsRoutingLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func routeToSomewhere()  {
        
    return cuckoo_manager.call("routeToSomewhere()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.routeToSomewhere())
        
    }
    

	 struct __StubbingProxy_SearchGameDetailsRoutingLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func routeToSomewhere() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameDetailsRoutingLogic.self, method: "routeToSomewhere()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchGameDetailsRoutingLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func routeToSomewhere() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("routeToSomewhere()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGameDetailsRoutingLogicStub: SearchGameDetailsRoutingLogic {
    

    

    
     func routeToSomewhere()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockSearchGameDetailsDataPassing: SearchGameDetailsDataPassing, Cuckoo.ProtocolMock {
    
     typealias MocksType = SearchGameDetailsDataPassing
    
     typealias Stubbing = __StubbingProxy_SearchGameDetailsDataPassing
     typealias Verification = __VerificationProxy_SearchGameDetailsDataPassing

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SearchGameDetailsDataPassing?

     func enableDefaultImplementation(_ stub: SearchGameDetailsDataPassing) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var dataStore: SearchGameDetailsDataStore? {
        get {
            return cuckoo_manager.getter("dataStore",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.dataStore)
        }
        
    }
    

    

    

	 struct __StubbingProxy_SearchGameDetailsDataPassing: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var dataStore: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockSearchGameDetailsDataPassing, SearchGameDetailsDataStore?> {
	        return .init(manager: cuckoo_manager, name: "dataStore")
	    }
	    
	    
	}

	 struct __VerificationProxy_SearchGameDetailsDataPassing: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var dataStore: Cuckoo.VerifyReadOnlyProperty<SearchGameDetailsDataStore?> {
	        return .init(manager: cuckoo_manager, name: "dataStore", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class SearchGameDetailsDataPassingStub: SearchGameDetailsDataPassing {
    
    
     var dataStore: SearchGameDetailsDataStore? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameDetailsDataStore?).self)
        }
        
    }
    

    

    
}



 class MockSearchGameDetailsRouter: SearchGameDetailsRouter, Cuckoo.ClassMock {
    
     typealias MocksType = SearchGameDetailsRouter
    
     typealias Stubbing = __StubbingProxy_SearchGameDetailsRouter
     typealias Verification = __VerificationProxy_SearchGameDetailsRouter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SearchGameDetailsRouter?

     func enableDefaultImplementation(_ stub: SearchGameDetailsRouter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var viewController: SearchGameDetailsViewController? {
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
    
    
    
     override var dataStore: SearchGameDetailsDataStore? {
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
    

    

    
    
    
     override func routeToSomewhere()  {
        
    return cuckoo_manager.call("routeToSomewhere()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.routeToSomewhere()
                ,
            defaultCall: __defaultImplStub!.routeToSomewhere())
        
    }
    

	 struct __StubbingProxy_SearchGameDetailsRouter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var viewController: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameDetailsRouter, SearchGameDetailsViewController> {
	        return .init(manager: cuckoo_manager, name: "viewController")
	    }
	    
	    
	    var dataStore: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameDetailsRouter, SearchGameDetailsDataStore> {
	        return .init(manager: cuckoo_manager, name: "dataStore")
	    }
	    
	    
	    func routeToSomewhere() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameDetailsRouter.self, method: "routeToSomewhere()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchGameDetailsRouter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var viewController: Cuckoo.VerifyOptionalProperty<SearchGameDetailsViewController> {
	        return .init(manager: cuckoo_manager, name: "viewController", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var dataStore: Cuckoo.VerifyOptionalProperty<SearchGameDetailsDataStore> {
	        return .init(manager: cuckoo_manager, name: "dataStore", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func routeToSomewhere() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("routeToSomewhere()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGameDetailsRouterStub: SearchGameDetailsRouter {
    
    
     override var viewController: SearchGameDetailsViewController? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameDetailsViewController?).self)
        }
        
        set { }
        
    }
    
    
     override var dataStore: SearchGameDetailsDataStore? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameDetailsDataStore?).self)
        }
        
        set { }
        
    }
    

    

    
     override func routeToSomewhere()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

