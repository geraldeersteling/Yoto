// MARK: - Mocks generated from file: Yoto/Sources/Scenes/GameDetails/GameDetailsPresenter.swift at 2020-08-19 13:10:15 +0000

//
//  GameDetailsPresenter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockGameDetailsPresentationLogic: GameDetailsPresentationLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = GameDetailsPresentationLogic
    
     typealias Stubbing = __StubbingProxy_GameDetailsPresentationLogic
     typealias Verification = __VerificationProxy_GameDetailsPresentationLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GameDetailsPresentationLogic?

     func enableDefaultImplementation(_ stub: GameDetailsPresentationLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func presentGame(response: GameDetails.GetGame.Response)  {
        
    return cuckoo_manager.call("presentGame(response: GameDetails.GetGame.Response)",
            parameters: (response),
            escapingParameters: (response),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.presentGame(response: response))
        
    }
    

	 struct __StubbingProxy_GameDetailsPresentationLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func presentGame<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(GameDetails.GetGame.Response)> where M1.MatchedType == GameDetails.GetGame.Response {
	        let matchers: [Cuckoo.ParameterMatcher<(GameDetails.GetGame.Response)>] = [wrap(matchable: response) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameDetailsPresentationLogic.self, method: "presentGame(response: GameDetails.GetGame.Response)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameDetailsPresentationLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func presentGame<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.__DoNotUse<(GameDetails.GetGame.Response), Void> where M1.MatchedType == GameDetails.GetGame.Response {
	        let matchers: [Cuckoo.ParameterMatcher<(GameDetails.GetGame.Response)>] = [wrap(matchable: response) { $0 }]
	        return cuckoo_manager.verify("presentGame(response: GameDetails.GetGame.Response)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameDetailsPresentationLogicStub: GameDetailsPresentationLogic {
    

    

    
     func presentGame(response: GameDetails.GetGame.Response)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockGameDetailsPresenter: GameDetailsPresenter, Cuckoo.ClassMock {
    
     typealias MocksType = GameDetailsPresenter
    
     typealias Stubbing = __StubbingProxy_GameDetailsPresenter
     typealias Verification = __VerificationProxy_GameDetailsPresenter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameDetailsPresenter?

     func enableDefaultImplementation(_ stub: GameDetailsPresenter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var viewController: GameDetailsDisplayLogic? {
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
    

    

    
    
    
     override func presentGame(response: GameDetails.GetGame.Response)  {
        
    return cuckoo_manager.call("presentGame(response: GameDetails.GetGame.Response)",
            parameters: (response),
            escapingParameters: (response),
            superclassCall:
                
                super.presentGame(response: response)
                ,
            defaultCall: __defaultImplStub!.presentGame(response: response))
        
    }
    

	 struct __StubbingProxy_GameDetailsPresenter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var viewController: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameDetailsPresenter, GameDetailsDisplayLogic> {
	        return .init(manager: cuckoo_manager, name: "viewController")
	    }
	    
	    
	    func presentGame<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.ClassStubNoReturnFunction<(GameDetails.GetGame.Response)> where M1.MatchedType == GameDetails.GetGame.Response {
	        let matchers: [Cuckoo.ParameterMatcher<(GameDetails.GetGame.Response)>] = [wrap(matchable: response) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameDetailsPresenter.self, method: "presentGame(response: GameDetails.GetGame.Response)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameDetailsPresenter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var viewController: Cuckoo.VerifyOptionalProperty<GameDetailsDisplayLogic> {
	        return .init(manager: cuckoo_manager, name: "viewController", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func presentGame<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.__DoNotUse<(GameDetails.GetGame.Response), Void> where M1.MatchedType == GameDetails.GetGame.Response {
	        let matchers: [Cuckoo.ParameterMatcher<(GameDetails.GetGame.Response)>] = [wrap(matchable: response) { $0 }]
	        return cuckoo_manager.verify("presentGame(response: GameDetails.GetGame.Response)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameDetailsPresenterStub: GameDetailsPresenter {
    
    
     override var viewController: GameDetailsDisplayLogic? {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameDetailsDisplayLogic?).self)
        }
        
        set { }
        
    }
    

    

    
     override func presentGame(response: GameDetails.GetGame.Response)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

