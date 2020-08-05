// MARK: - Mocks generated from file: Yoto/Sources/Scenes/SearchGame/SearchGamePresenter.swift at 2020-08-05 11:14:22 +0000

//
//  SearchGamePresenter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockSearchGamePresentationLogic: SearchGamePresentationLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = SearchGamePresentationLogic
    
     typealias Stubbing = __StubbingProxy_SearchGamePresentationLogic
     typealias Verification = __VerificationProxy_SearchGamePresentationLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SearchGamePresentationLogic?

     func enableDefaultImplementation(_ stub: SearchGamePresentationLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func presentSearchForGameResults(response: SearchGame.SearchForGame.Response)  {
        
    return cuckoo_manager.call("presentSearchForGameResults(response: SearchGame.SearchForGame.Response)",
            parameters: (response),
            escapingParameters: (response),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.presentSearchForGameResults(response: response))
        
    }
    

	 struct __StubbingProxy_SearchGamePresentationLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func presentSearchForGameResults<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(SearchGame.SearchForGame.Response)> where M1.MatchedType == SearchGame.SearchForGame.Response {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGame.SearchForGame.Response)>] = [wrap(matchable: response) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGamePresentationLogic.self, method: "presentSearchForGameResults(response: SearchGame.SearchForGame.Response)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchGamePresentationLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func presentSearchForGameResults<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.__DoNotUse<(SearchGame.SearchForGame.Response), Void> where M1.MatchedType == SearchGame.SearchForGame.Response {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGame.SearchForGame.Response)>] = [wrap(matchable: response) { $0 }]
	        return cuckoo_manager.verify("presentSearchForGameResults(response: SearchGame.SearchForGame.Response)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGamePresentationLogicStub: SearchGamePresentationLogic {
    

    

    
     func presentSearchForGameResults(response: SearchGame.SearchForGame.Response)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockSearchGamePresenter: SearchGamePresenter, Cuckoo.ClassMock {
    
     typealias MocksType = SearchGamePresenter
    
     typealias Stubbing = __StubbingProxy_SearchGamePresenter
     typealias Verification = __VerificationProxy_SearchGamePresenter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SearchGamePresenter?

     func enableDefaultImplementation(_ stub: SearchGamePresenter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var viewController: SearchGameDisplayLogic? {
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
    

    

    
    
    
     override func presentSearchForGameResults(response: SearchGame.SearchForGame.Response)  {
        
    return cuckoo_manager.call("presentSearchForGameResults(response: SearchGame.SearchForGame.Response)",
            parameters: (response),
            escapingParameters: (response),
            superclassCall:
                
                super.presentSearchForGameResults(response: response)
                ,
            defaultCall: __defaultImplStub!.presentSearchForGameResults(response: response))
        
    }
    

	 struct __StubbingProxy_SearchGamePresenter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var viewController: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGamePresenter, SearchGameDisplayLogic> {
	        return .init(manager: cuckoo_manager, name: "viewController")
	    }
	    
	    
	    func presentSearchForGameResults<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.ClassStubNoReturnFunction<(SearchGame.SearchForGame.Response)> where M1.MatchedType == SearchGame.SearchForGame.Response {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGame.SearchForGame.Response)>] = [wrap(matchable: response) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGamePresenter.self, method: "presentSearchForGameResults(response: SearchGame.SearchForGame.Response)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchGamePresenter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var viewController: Cuckoo.VerifyOptionalProperty<SearchGameDisplayLogic> {
	        return .init(manager: cuckoo_manager, name: "viewController", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func presentSearchForGameResults<M1: Cuckoo.Matchable>(response: M1) -> Cuckoo.__DoNotUse<(SearchGame.SearchForGame.Response), Void> where M1.MatchedType == SearchGame.SearchForGame.Response {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGame.SearchForGame.Response)>] = [wrap(matchable: response) { $0 }]
	        return cuckoo_manager.verify("presentSearchForGameResults(response: SearchGame.SearchForGame.Response)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGamePresenterStub: SearchGamePresenter {
    
    
     override var viewController: SearchGameDisplayLogic? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameDisplayLogic?).self)
        }
        
        set { }
        
    }
    

    

    
     override func presentSearchForGameResults(response: SearchGame.SearchForGame.Response)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

