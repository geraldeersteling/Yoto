// MARK: - Mocks generated from file: Yoto/Sources/Scenes/GameList/GameListPresenter.swift at 2020-08-11 14:49:27 +0000

//
//  GameListPresenter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockGameListPresentationLogic: GameListPresentationLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = GameListPresentationLogic
    
     typealias Stubbing = __StubbingProxy_GameListPresentationLogic
     typealias Verification = __VerificationProxy_GameListPresentationLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GameListPresentationLogic?

     func enableDefaultImplementation(_ stub: GameListPresentationLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func presentGameList(response: GameList.GetList.Response)  {
        
    return cuckoo_manager.call("presentGameList(response: GameList.GetList.Response)",
            parameters: (response),
            escapingParameters: (response),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.presentGameList(response: response))
        
    }
    

	 struct __StubbingProxy_GameListPresentationLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func presentGameList<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(GameList.GetList.Response)> where M1.MatchedType == GameList.GetList.Response {
	        let matchers: [Cuckoo.ParameterMatcher<(GameList.GetList.Response)>] = [wrap(matchable: response) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListPresentationLogic.self, method: "presentGameList(response: GameList.GetList.Response)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameListPresentationLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func presentGameList<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.__DoNotUse<(GameList.GetList.Response), Void> where M1.MatchedType == GameList.GetList.Response {
	        let matchers: [Cuckoo.ParameterMatcher<(GameList.GetList.Response)>] = [wrap(matchable: response) { $0 }]
	        return cuckoo_manager.verify("presentGameList(response: GameList.GetList.Response)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameListPresentationLogicStub: GameListPresentationLogic {
    

    

    
     func presentGameList(response: GameList.GetList.Response)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockGameListPresenter: GameListPresenter, Cuckoo.ClassMock {
    
     typealias MocksType = GameListPresenter
    
     typealias Stubbing = __StubbingProxy_GameListPresenter
     typealias Verification = __VerificationProxy_GameListPresenter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameListPresenter?

     func enableDefaultImplementation(_ stub: GameListPresenter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var viewController: GameListDisplayLogic? {
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
    

    

    
    
    
     override func presentGameList(response: GameList.GetList.Response)  {
        
    return cuckoo_manager.call("presentGameList(response: GameList.GetList.Response)",
            parameters: (response),
            escapingParameters: (response),
            superclassCall:
                
                super.presentGameList(response: response)
                ,
            defaultCall: __defaultImplStub!.presentGameList(response: response))
        
    }
    

	 struct __StubbingProxy_GameListPresenter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var viewController: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameListPresenter, GameListDisplayLogic> {
	        return .init(manager: cuckoo_manager, name: "viewController")
	    }
	    
	    
	    func presentGameList<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.ClassStubNoReturnFunction<(GameList.GetList.Response)> where M1.MatchedType == GameList.GetList.Response {
	        let matchers: [Cuckoo.ParameterMatcher<(GameList.GetList.Response)>] = [wrap(matchable: response) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListPresenter.self, method: "presentGameList(response: GameList.GetList.Response)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameListPresenter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var viewController: Cuckoo.VerifyOptionalProperty<GameListDisplayLogic> {
	        return .init(manager: cuckoo_manager, name: "viewController", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func presentGameList<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.__DoNotUse<(GameList.GetList.Response), Void> where M1.MatchedType == GameList.GetList.Response {
	        let matchers: [Cuckoo.ParameterMatcher<(GameList.GetList.Response)>] = [wrap(matchable: response) { $0 }]
	        return cuckoo_manager.verify("presentGameList(response: GameList.GetList.Response)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameListPresenterStub: GameListPresenter {
    
    
     override var viewController: GameListDisplayLogic? {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameListDisplayLogic?).self)
        }
        
        set { }
        
    }
    

    

    
     override func presentGameList(response: GameList.GetList.Response)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

