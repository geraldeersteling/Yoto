// MARK: - Mocks generated from file: Yoto/Sources/Scenes/GameDetails/GameDetailsInteractor.swift at 2020-08-11 14:49:27 +0000

//
//  GameDetailsInteractor.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockGameDetailsBusinessLogic: GameDetailsBusinessLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = GameDetailsBusinessLogic
    
     typealias Stubbing = __StubbingProxy_GameDetailsBusinessLogic
     typealias Verification = __VerificationProxy_GameDetailsBusinessLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GameDetailsBusinessLogic?

     func enableDefaultImplementation(_ stub: GameDetailsBusinessLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getGame(request: GameDetails.GetGame.Request)  {
        
    return cuckoo_manager.call("getGame(request: GameDetails.GetGame.Request)",
            parameters: (request),
            escapingParameters: (request),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getGame(request: request))
        
    }
    

	 struct __StubbingProxy_GameDetailsBusinessLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getGame<M1: Cuckoo.Matchable>(request: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(GameDetails.GetGame.Request)> where M1.MatchedType == GameDetails.GetGame.Request {
	        let matchers: [Cuckoo.ParameterMatcher<(GameDetails.GetGame.Request)>] = [wrap(matchable: request) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameDetailsBusinessLogic.self, method: "getGame(request: GameDetails.GetGame.Request)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameDetailsBusinessLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getGame<M1: Cuckoo.Matchable>(request: M1) -> Cuckoo.__DoNotUse<(GameDetails.GetGame.Request), Void> where M1.MatchedType == GameDetails.GetGame.Request {
	        let matchers: [Cuckoo.ParameterMatcher<(GameDetails.GetGame.Request)>] = [wrap(matchable: request) { $0 }]
	        return cuckoo_manager.verify("getGame(request: GameDetails.GetGame.Request)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameDetailsBusinessLogicStub: GameDetailsBusinessLogic {
    

    

    
     func getGame(request: GameDetails.GetGame.Request)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockGameDetailsDataStore: GameDetailsDataStore, Cuckoo.ProtocolMock {
    
     typealias MocksType = GameDetailsDataStore
    
     typealias Stubbing = __StubbingProxy_GameDetailsDataStore
     typealias Verification = __VerificationProxy_GameDetailsDataStore

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GameDetailsDataStore?

     func enableDefaultImplementation(_ stub: GameDetailsDataStore) {
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
    

    

    

	 struct __StubbingProxy_GameDetailsDataStore: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var game: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockGameDetailsDataStore, Game> {
	        return .init(manager: cuckoo_manager, name: "game")
	    }
	    
	    
	}

	 struct __VerificationProxy_GameDetailsDataStore: Cuckoo.VerificationProxy {
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

 class GameDetailsDataStoreStub: GameDetailsDataStore {
    
    
     var game: Game! {
        get {
            return DefaultValueRegistry.defaultValue(for: (Game?).self)
        }
        
        set { }
        
    }
    

    

    
}



 class MockGameDetailsInteractor: GameDetailsInteractor, Cuckoo.ClassMock {
    
     typealias MocksType = GameDetailsInteractor
    
     typealias Stubbing = __StubbingProxy_GameDetailsInteractor
     typealias Verification = __VerificationProxy_GameDetailsInteractor

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameDetailsInteractor?

     func enableDefaultImplementation(_ stub: GameDetailsInteractor) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var presenter: GameDetailsPresentationLogic? {
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
    
    
    
     override var worker: GameDetailsWorker? {
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
    

    

    
    
    
     override func getGame(request: GameDetails.GetGame.Request)  {
        
    return cuckoo_manager.call("getGame(request: GameDetails.GetGame.Request)",
            parameters: (request),
            escapingParameters: (request),
            superclassCall:
                
                super.getGame(request: request)
                ,
            defaultCall: __defaultImplStub!.getGame(request: request))
        
    }
    

	 struct __StubbingProxy_GameDetailsInteractor: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var presenter: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameDetailsInteractor, GameDetailsPresentationLogic> {
	        return .init(manager: cuckoo_manager, name: "presenter")
	    }
	    
	    
	    var worker: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameDetailsInteractor, GameDetailsWorker> {
	        return .init(manager: cuckoo_manager, name: "worker")
	    }
	    
	    
	    var game: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameDetailsInteractor, Game> {
	        return .init(manager: cuckoo_manager, name: "game")
	    }
	    
	    
	    func getGame<M1: Cuckoo.Matchable>(request: M1) -> Cuckoo.ClassStubNoReturnFunction<(GameDetails.GetGame.Request)> where M1.MatchedType == GameDetails.GetGame.Request {
	        let matchers: [Cuckoo.ParameterMatcher<(GameDetails.GetGame.Request)>] = [wrap(matchable: request) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameDetailsInteractor.self, method: "getGame(request: GameDetails.GetGame.Request)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameDetailsInteractor: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var presenter: Cuckoo.VerifyOptionalProperty<GameDetailsPresentationLogic> {
	        return .init(manager: cuckoo_manager, name: "presenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var worker: Cuckoo.VerifyOptionalProperty<GameDetailsWorker> {
	        return .init(manager: cuckoo_manager, name: "worker", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var game: Cuckoo.VerifyOptionalProperty<Game> {
	        return .init(manager: cuckoo_manager, name: "game", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func getGame<M1: Cuckoo.Matchable>(request: M1) -> Cuckoo.__DoNotUse<(GameDetails.GetGame.Request), Void> where M1.MatchedType == GameDetails.GetGame.Request {
	        let matchers: [Cuckoo.ParameterMatcher<(GameDetails.GetGame.Request)>] = [wrap(matchable: request) { $0 }]
	        return cuckoo_manager.verify("getGame(request: GameDetails.GetGame.Request)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameDetailsInteractorStub: GameDetailsInteractor {
    
    
     override var presenter: GameDetailsPresentationLogic? {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameDetailsPresentationLogic?).self)
        }
        
        set { }
        
    }
    
    
     override var worker: GameDetailsWorker? {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameDetailsWorker?).self)
        }
        
        set { }
        
    }
    
    
     override var game: Game! {
        get {
            return DefaultValueRegistry.defaultValue(for: (Game?).self)
        }
        
        set { }
        
    }
    

    

    
     override func getGame(request: GameDetails.GetGame.Request)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

