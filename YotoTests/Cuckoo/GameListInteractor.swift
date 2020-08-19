// MARK: - Mocks generated from file: Yoto/Sources/Scenes/GameList/GameListInteractor.swift at 2020-08-19 13:10:15 +0000

//
//  GameListInteractor.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockGameListBusinessLogic: GameListBusinessLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = GameListBusinessLogic
    
     typealias Stubbing = __StubbingProxy_GameListBusinessLogic
     typealias Verification = __VerificationProxy_GameListBusinessLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GameListBusinessLogic?

     func enableDefaultImplementation(_ stub: GameListBusinessLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getList(request: GameList.GetList.Request)  {
        
    return cuckoo_manager.call("getList(request: GameList.GetList.Request)",
            parameters: (request),
            escapingParameters: (request),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getList(request: request))
        
    }
    

	 struct __StubbingProxy_GameListBusinessLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getList<M1: Cuckoo.Matchable>(request: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(GameList.GetList.Request)> where M1.MatchedType == GameList.GetList.Request {
	        let matchers: [Cuckoo.ParameterMatcher<(GameList.GetList.Request)>] = [wrap(matchable: request) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListBusinessLogic.self, method: "getList(request: GameList.GetList.Request)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameListBusinessLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getList<M1: Cuckoo.Matchable>(request: M1) -> Cuckoo.__DoNotUse<(GameList.GetList.Request), Void> where M1.MatchedType == GameList.GetList.Request {
	        let matchers: [Cuckoo.ParameterMatcher<(GameList.GetList.Request)>] = [wrap(matchable: request) { $0 }]
	        return cuckoo_manager.verify("getList(request: GameList.GetList.Request)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameListBusinessLogicStub: GameListBusinessLogic {
    

    

    
     func getList(request: GameList.GetList.Request)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockGameListDataStore: GameListDataStore, Cuckoo.ProtocolMock {
    
     typealias MocksType = GameListDataStore
    
     typealias Stubbing = __StubbingProxy_GameListDataStore
     typealias Verification = __VerificationProxy_GameListDataStore

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GameListDataStore?

     func enableDefaultImplementation(_ stub: GameListDataStore) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var games: [Game] {
        get {
            return cuckoo_manager.getter("games",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.games)
        }
        
        set {
            cuckoo_manager.setter("games",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.games = newValue)
        }
        
    }
    

    

    

	 struct __StubbingProxy_GameListDataStore: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var games: Cuckoo.ProtocolToBeStubbedProperty<MockGameListDataStore, [Game]> {
	        return .init(manager: cuckoo_manager, name: "games")
	    }
	    
	    
	}

	 struct __VerificationProxy_GameListDataStore: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var games: Cuckoo.VerifyProperty<[Game]> {
	        return .init(manager: cuckoo_manager, name: "games", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class GameListDataStoreStub: GameListDataStore {
    
    
     var games: [Game] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([Game]).self)
        }
        
        set { }
        
    }
    

    

    
}



 class MockGameListInteractor: GameListInteractor, Cuckoo.ClassMock {
    
     typealias MocksType = GameListInteractor
    
     typealias Stubbing = __StubbingProxy_GameListInteractor
     typealias Verification = __VerificationProxy_GameListInteractor

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameListInteractor?

     func enableDefaultImplementation(_ stub: GameListInteractor) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var presenter: GameListPresentationLogic? {
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
    
    
    
     override var worker: GameListWorker {
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
    
    
    
     override var games: [Game] {
        get {
            return cuckoo_manager.getter("games",
                superclassCall:
                    
                    super.games
                    ,
                defaultCall: __defaultImplStub!.games)
        }
        
        set {
            cuckoo_manager.setter("games",
                value: newValue,
                superclassCall:
                    
                    super.games = newValue
                    ,
                defaultCall: __defaultImplStub!.games = newValue)
        }
        
    }
    

    

    
    
    
     override func getList(request: GameList.GetList.Request)  {
        
    return cuckoo_manager.call("getList(request: GameList.GetList.Request)",
            parameters: (request),
            escapingParameters: (request),
            superclassCall:
                
                super.getList(request: request)
                ,
            defaultCall: __defaultImplStub!.getList(request: request))
        
    }
    

	 struct __StubbingProxy_GameListInteractor: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var presenter: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameListInteractor, GameListPresentationLogic> {
	        return .init(manager: cuckoo_manager, name: "presenter")
	    }
	    
	    
	    var worker: Cuckoo.ClassToBeStubbedProperty<MockGameListInteractor, GameListWorker> {
	        return .init(manager: cuckoo_manager, name: "worker")
	    }
	    
	    
	    var games: Cuckoo.ClassToBeStubbedProperty<MockGameListInteractor, [Game]> {
	        return .init(manager: cuckoo_manager, name: "games")
	    }
	    
	    
	    func getList<M1: Cuckoo.Matchable>(request: M1) -> Cuckoo.ClassStubNoReturnFunction<(GameList.GetList.Request)> where M1.MatchedType == GameList.GetList.Request {
	        let matchers: [Cuckoo.ParameterMatcher<(GameList.GetList.Request)>] = [wrap(matchable: request) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListInteractor.self, method: "getList(request: GameList.GetList.Request)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameListInteractor: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var presenter: Cuckoo.VerifyOptionalProperty<GameListPresentationLogic> {
	        return .init(manager: cuckoo_manager, name: "presenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var worker: Cuckoo.VerifyProperty<GameListWorker> {
	        return .init(manager: cuckoo_manager, name: "worker", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var games: Cuckoo.VerifyProperty<[Game]> {
	        return .init(manager: cuckoo_manager, name: "games", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func getList<M1: Cuckoo.Matchable>(request: M1) -> Cuckoo.__DoNotUse<(GameList.GetList.Request), Void> where M1.MatchedType == GameList.GetList.Request {
	        let matchers: [Cuckoo.ParameterMatcher<(GameList.GetList.Request)>] = [wrap(matchable: request) { $0 }]
	        return cuckoo_manager.verify("getList(request: GameList.GetList.Request)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameListInteractorStub: GameListInteractor {
    
    
     override var presenter: GameListPresentationLogic? {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameListPresentationLogic?).self)
        }
        
        set { }
        
    }
    
    
     override var worker: GameListWorker {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameListWorker).self)
        }
        
        set { }
        
    }
    
    
     override var games: [Game] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([Game]).self)
        }
        
        set { }
        
    }
    

    

    
     override func getList(request: GameList.GetList.Request)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

