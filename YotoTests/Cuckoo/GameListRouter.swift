// MARK: - Mocks generated from file: Yoto/Sources/Scenes/GameList/GameListRouter.swift at 2020-08-05 11:14:22 +0000

//
//  GameListRouter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockGameListRoutingLogic: GameListRoutingLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = GameListRoutingLogic
    
     typealias Stubbing = __StubbingProxy_GameListRoutingLogic
     typealias Verification = __VerificationProxy_GameListRoutingLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GameListRoutingLogic?

     func enableDefaultImplementation(_ stub: GameListRoutingLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func routeToGameDetails()  {
        
    return cuckoo_manager.call("routeToGameDetails()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.routeToGameDetails())
        
    }
    

	 struct __StubbingProxy_GameListRoutingLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func routeToGameDetails() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListRoutingLogic.self, method: "routeToGameDetails()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameListRoutingLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func routeToGameDetails() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("routeToGameDetails()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameListRoutingLogicStub: GameListRoutingLogic {
    

    

    
     func routeToGameDetails()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockGameListDataPassing: GameListDataPassing, Cuckoo.ProtocolMock {
    
     typealias MocksType = GameListDataPassing
    
     typealias Stubbing = __StubbingProxy_GameListDataPassing
     typealias Verification = __VerificationProxy_GameListDataPassing

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GameListDataPassing?

     func enableDefaultImplementation(_ stub: GameListDataPassing) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var dataStore: GameListDataStore? {
        get {
            return cuckoo_manager.getter("dataStore",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.dataStore)
        }
        
    }
    

    

    

	 struct __StubbingProxy_GameListDataPassing: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var dataStore: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockGameListDataPassing, GameListDataStore?> {
	        return .init(manager: cuckoo_manager, name: "dataStore")
	    }
	    
	    
	}

	 struct __VerificationProxy_GameListDataPassing: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var dataStore: Cuckoo.VerifyReadOnlyProperty<GameListDataStore?> {
	        return .init(manager: cuckoo_manager, name: "dataStore", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class GameListDataPassingStub: GameListDataPassing {
    
    
     var dataStore: GameListDataStore? {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameListDataStore?).self)
        }
        
    }
    

    

    
}



 class MockGameListRouter: GameListRouter, Cuckoo.ClassMock {
    
     typealias MocksType = GameListRouter
    
     typealias Stubbing = __StubbingProxy_GameListRouter
     typealias Verification = __VerificationProxy_GameListRouter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameListRouter?

     func enableDefaultImplementation(_ stub: GameListRouter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var viewController: GameListViewController? {
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
    
    
    
     override var dataStore: GameListDataStore? {
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
    

    

    
    
    
     override func routeToGameDetails()  {
        
    return cuckoo_manager.call("routeToGameDetails()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.routeToGameDetails()
                ,
            defaultCall: __defaultImplStub!.routeToGameDetails())
        
    }
    
    
    
     override func navigateToGameDetails(_ source: GameListViewController?, destination: GameDetailsViewController)  {
        
    return cuckoo_manager.call("navigateToGameDetails(_: GameListViewController?, destination: GameDetailsViewController)",
            parameters: (source, destination),
            escapingParameters: (source, destination),
            superclassCall:
                
                super.navigateToGameDetails(source, destination: destination)
                ,
            defaultCall: __defaultImplStub!.navigateToGameDetails(source, destination: destination))
        
    }
    
    
    
     override func passDataToGameDetails(from source: GameListDataStore, destination: inout GameDetailsDataStore)  {
        
    return cuckoo_manager.call("passDataToGameDetails(from: GameListDataStore, destination: inout GameDetailsDataStore)",
            parameters: (source, destination),
            escapingParameters: (source, destination),
            superclassCall:
                
                super.passDataToGameDetails(from: source, destination: &destination)
                ,
            defaultCall: __defaultImplStub!.passDataToGameDetails(from: source, destination: &destination))
        
    }
    

	 struct __StubbingProxy_GameListRouter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var viewController: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameListRouter, GameListViewController> {
	        return .init(manager: cuckoo_manager, name: "viewController")
	    }
	    
	    
	    var dataStore: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameListRouter, GameListDataStore> {
	        return .init(manager: cuckoo_manager, name: "dataStore")
	    }
	    
	    
	    func routeToGameDetails() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListRouter.self, method: "routeToGameDetails()", parameterMatchers: matchers))
	    }
	    
	    func navigateToGameDetails<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable>(_ source: M1, destination: M2) -> Cuckoo.ClassStubNoReturnFunction<(GameListViewController?, GameDetailsViewController)> where M1.OptionalMatchedType == GameListViewController, M2.MatchedType == GameDetailsViewController {
	        let matchers: [Cuckoo.ParameterMatcher<(GameListViewController?, GameDetailsViewController)>] = [wrap(matchable: source) { $0.0 }, wrap(matchable: destination) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListRouter.self, method: "navigateToGameDetails(_: GameListViewController?, destination: GameDetailsViewController)", parameterMatchers: matchers))
	    }
	    
	    func passDataToGameDetails<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(from source: M1, destination: M2) -> Cuckoo.ClassStubNoReturnFunction<(GameListDataStore, GameDetailsDataStore)> where M1.MatchedType == GameListDataStore, M2.MatchedType == GameDetailsDataStore {
	        let matchers: [Cuckoo.ParameterMatcher<(GameListDataStore, GameDetailsDataStore)>] = [wrap(matchable: source) { $0.0 }, wrap(matchable: destination) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListRouter.self, method: "passDataToGameDetails(from: GameListDataStore, destination: inout GameDetailsDataStore)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameListRouter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var viewController: Cuckoo.VerifyOptionalProperty<GameListViewController> {
	        return .init(manager: cuckoo_manager, name: "viewController", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var dataStore: Cuckoo.VerifyOptionalProperty<GameListDataStore> {
	        return .init(manager: cuckoo_manager, name: "dataStore", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func routeToGameDetails() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("routeToGameDetails()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func navigateToGameDetails<M1: Cuckoo.OptionalMatchable, M2: Cuckoo.Matchable>(_ source: M1, destination: M2) -> Cuckoo.__DoNotUse<(GameListViewController?, GameDetailsViewController), Void> where M1.OptionalMatchedType == GameListViewController, M2.MatchedType == GameDetailsViewController {
	        let matchers: [Cuckoo.ParameterMatcher<(GameListViewController?, GameDetailsViewController)>] = [wrap(matchable: source) { $0.0 }, wrap(matchable: destination) { $0.1 }]
	        return cuckoo_manager.verify("navigateToGameDetails(_: GameListViewController?, destination: GameDetailsViewController)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func passDataToGameDetails<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(from source: M1, destination: M2) -> Cuckoo.__DoNotUse<(GameListDataStore, GameDetailsDataStore), Void> where M1.MatchedType == GameListDataStore, M2.MatchedType == GameDetailsDataStore {
	        let matchers: [Cuckoo.ParameterMatcher<(GameListDataStore, GameDetailsDataStore)>] = [wrap(matchable: source) { $0.0 }, wrap(matchable: destination) { $0.1 }]
	        return cuckoo_manager.verify("passDataToGameDetails(from: GameListDataStore, destination: inout GameDetailsDataStore)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameListRouterStub: GameListRouter {
    
    
     override var viewController: GameListViewController? {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameListViewController?).self)
        }
        
        set { }
        
    }
    
    
     override var dataStore: GameListDataStore? {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameListDataStore?).self)
        }
        
        set { }
        
    }
    

    

    
     override func routeToGameDetails()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func navigateToGameDetails(_ source: GameListViewController?, destination: GameDetailsViewController)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func passDataToGameDetails(from source: GameListDataStore, destination: inout GameDetailsDataStore)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

