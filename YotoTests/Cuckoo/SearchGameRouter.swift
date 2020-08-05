// MARK: - Mocks generated from file: Yoto/Sources/Scenes/SearchGame/SearchGameRouter.swift at 2020-08-05 11:14:22 +0000

//
//  SearchGameRouter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockSearchGameRoutingLogic: SearchGameRoutingLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = SearchGameRoutingLogic
    
     typealias Stubbing = __StubbingProxy_SearchGameRoutingLogic
     typealias Verification = __VerificationProxy_SearchGameRoutingLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SearchGameRoutingLogic?

     func enableDefaultImplementation(_ stub: SearchGameRoutingLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func routeToGameSearchDetails()  {
        
    return cuckoo_manager.call("routeToGameSearchDetails()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.routeToGameSearchDetails())
        
    }
    

	 struct __StubbingProxy_SearchGameRoutingLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func routeToGameSearchDetails() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameRoutingLogic.self, method: "routeToGameSearchDetails()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchGameRoutingLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func routeToGameSearchDetails() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("routeToGameSearchDetails()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGameRoutingLogicStub: SearchGameRoutingLogic {
    

    

    
     func routeToGameSearchDetails()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockSearchGameDataPassing: SearchGameDataPassing, Cuckoo.ProtocolMock {
    
     typealias MocksType = SearchGameDataPassing
    
     typealias Stubbing = __StubbingProxy_SearchGameDataPassing
     typealias Verification = __VerificationProxy_SearchGameDataPassing

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SearchGameDataPassing?

     func enableDefaultImplementation(_ stub: SearchGameDataPassing) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var dataStore: SearchGameDataStore? {
        get {
            return cuckoo_manager.getter("dataStore",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.dataStore)
        }
        
    }
    

    

    

	 struct __StubbingProxy_SearchGameDataPassing: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var dataStore: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockSearchGameDataPassing, SearchGameDataStore?> {
	        return .init(manager: cuckoo_manager, name: "dataStore")
	    }
	    
	    
	}

	 struct __VerificationProxy_SearchGameDataPassing: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var dataStore: Cuckoo.VerifyReadOnlyProperty<SearchGameDataStore?> {
	        return .init(manager: cuckoo_manager, name: "dataStore", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class SearchGameDataPassingStub: SearchGameDataPassing {
    
    
     var dataStore: SearchGameDataStore? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameDataStore?).self)
        }
        
    }
    

    

    
}



 class MockSearchGameRouter: SearchGameRouter, Cuckoo.ClassMock {
    
     typealias MocksType = SearchGameRouter
    
     typealias Stubbing = __StubbingProxy_SearchGameRouter
     typealias Verification = __VerificationProxy_SearchGameRouter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SearchGameRouter?

     func enableDefaultImplementation(_ stub: SearchGameRouter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var viewController: SearchGameViewController? {
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
    
    
    
     override var dataStore: SearchGameDataStore? {
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
    

    

    
    
    
     override func routeToGameSearchDetails()  {
        
    return cuckoo_manager.call("routeToGameSearchDetails()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.routeToGameSearchDetails()
                ,
            defaultCall: __defaultImplStub!.routeToGameSearchDetails())
        
    }
    
    
    
     override func navigateToGameDetails(source: SearchGameViewController?, destination: SearchGameDetailsViewController)  {
        
    return cuckoo_manager.call("navigateToGameDetails(source: SearchGameViewController?, destination: SearchGameDetailsViewController)",
            parameters: (source, destination),
            escapingParameters: (source, destination),
            superclassCall:
                
                super.navigateToGameDetails(source: source, destination: destination)
                ,
            defaultCall: __defaultImplStub!.navigateToGameDetails(source: source, destination: destination))
        
    }
    
    
    
     override func passDataToSomewhere(source: SearchGameDataStore, destination: inout SearchGameDetailsDataStore)  {
        
    return cuckoo_manager.call("passDataToSomewhere(source: SearchGameDataStore, destination: inout SearchGameDetailsDataStore)",
            parameters: (source, destination),
            escapingParameters: (source, destination),
            superclassCall:
                
                super.passDataToSomewhere(source: source, destination: &destination)
                ,
            defaultCall: __defaultImplStub!.passDataToSomewhere(source: source, destination: &destination))
        
    }
    

	 struct __StubbingProxy_SearchGameRouter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var viewController: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameRouter, SearchGameViewController> {
	        return .init(manager: cuckoo_manager, name: "viewController")
	    }
	    
	    
	    var dataStore: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameRouter, SearchGameDataStore> {
	        return .init(manager: cuckoo_manager, name: "dataStore")
	    }
	    
	    
	    func routeToGameSearchDetails() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameRouter.self, method: "routeToGameSearchDetails()", parameterMatchers: matchers))
	    }
	    
	    func navigateToGameDetails<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable>(source: M1, destination: M2) -> Cuckoo.ClassStubNoReturnFunction<(SearchGameViewController?, SearchGameDetailsViewController)> where M1.OptionalMatchedType == SearchGameViewController, M2.MatchedType == SearchGameDetailsViewController {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGameViewController?, SearchGameDetailsViewController)>] = [wrap(matchable: source) { $0.0 }, wrap(matchable: destination) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameRouter.self, method: "navigateToGameDetails(source: SearchGameViewController?, destination: SearchGameDetailsViewController)", parameterMatchers: matchers))
	    }
	    
	    func passDataToSomewhere<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(source: M1, destination: M2) -> Cuckoo.ClassStubNoReturnFunction<(SearchGameDataStore, SearchGameDetailsDataStore)> where M1.MatchedType == SearchGameDataStore, M2.MatchedType == SearchGameDetailsDataStore {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGameDataStore, SearchGameDetailsDataStore)>] = [wrap(matchable: source) { $0.0 }, wrap(matchable: destination) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameRouter.self, method: "passDataToSomewhere(source: SearchGameDataStore, destination: inout SearchGameDetailsDataStore)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchGameRouter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var viewController: Cuckoo.VerifyOptionalProperty<SearchGameViewController> {
	        return .init(manager: cuckoo_manager, name: "viewController", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var dataStore: Cuckoo.VerifyOptionalProperty<SearchGameDataStore> {
	        return .init(manager: cuckoo_manager, name: "dataStore", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func routeToGameSearchDetails() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("routeToGameSearchDetails()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func navigateToGameDetails<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable>(source: M1, destination: M2) -> Cuckoo.__DoNotUse<(SearchGameViewController?, SearchGameDetailsViewController), Void> where M1.OptionalMatchedType == SearchGameViewController, M2.MatchedType == SearchGameDetailsViewController {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGameViewController?, SearchGameDetailsViewController)>] = [wrap(matchable: source) { $0.0 }, wrap(matchable: destination) { $0.1 }]
	        return cuckoo_manager.verify("navigateToGameDetails(source: SearchGameViewController?, destination: SearchGameDetailsViewController)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func passDataToSomewhere<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(source: M1, destination: M2) -> Cuckoo.__DoNotUse<(SearchGameDataStore, SearchGameDetailsDataStore), Void> where M1.MatchedType == SearchGameDataStore, M2.MatchedType == SearchGameDetailsDataStore {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGameDataStore, SearchGameDetailsDataStore)>] = [wrap(matchable: source) { $0.0 }, wrap(matchable: destination) { $0.1 }]
	        return cuckoo_manager.verify("passDataToSomewhere(source: SearchGameDataStore, destination: inout SearchGameDetailsDataStore)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGameRouterStub: SearchGameRouter {
    
    
     override var viewController: SearchGameViewController? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameViewController?).self)
        }
        
        set { }
        
    }
    
    
     override var dataStore: SearchGameDataStore? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameDataStore?).self)
        }
        
        set { }
        
    }
    

    

    
     override func routeToGameSearchDetails()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func navigateToGameDetails(source: SearchGameViewController?, destination: SearchGameDetailsViewController)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func passDataToSomewhere(source: SearchGameDataStore, destination: inout SearchGameDetailsDataStore)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

