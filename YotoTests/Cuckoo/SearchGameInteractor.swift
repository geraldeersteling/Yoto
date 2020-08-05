// MARK: - Mocks generated from file: Yoto/Sources/Scenes/SearchGame/SearchGameInteractor.swift at 2020-08-05 11:14:22 +0000

//
//  SearchGameInteractor.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockSearchGameBusinessLogic: SearchGameBusinessLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = SearchGameBusinessLogic
    
     typealias Stubbing = __StubbingProxy_SearchGameBusinessLogic
     typealias Verification = __VerificationProxy_SearchGameBusinessLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SearchGameBusinessLogic?

     func enableDefaultImplementation(_ stub: SearchGameBusinessLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func searchForGame(request: SearchGame.SearchForGame.Request)  {
        
    return cuckoo_manager.call("searchForGame(request: SearchGame.SearchForGame.Request)",
            parameters: (request),
            escapingParameters: (request),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.searchForGame(request: request))
        
    }
    

	 struct __StubbingProxy_SearchGameBusinessLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func searchForGame<M1: Cuckoo.Matchable>(request: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(SearchGame.SearchForGame.Request)> where M1.MatchedType == SearchGame.SearchForGame.Request {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGame.SearchForGame.Request)>] = [wrap(matchable: request) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameBusinessLogic.self, method: "searchForGame(request: SearchGame.SearchForGame.Request)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchGameBusinessLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func searchForGame<M1: Cuckoo.Matchable>(request: M1) -> Cuckoo.__DoNotUse<(SearchGame.SearchForGame.Request), Void> where M1.MatchedType == SearchGame.SearchForGame.Request {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGame.SearchForGame.Request)>] = [wrap(matchable: request) { $0 }]
	        return cuckoo_manager.verify("searchForGame(request: SearchGame.SearchForGame.Request)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGameBusinessLogicStub: SearchGameBusinessLogic {
    

    

    
     func searchForGame(request: SearchGame.SearchForGame.Request)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockSearchGameDataStore: SearchGameDataStore, Cuckoo.ProtocolMock {
    
     typealias MocksType = SearchGameDataStore
    
     typealias Stubbing = __StubbingProxy_SearchGameDataStore
     typealias Verification = __VerificationProxy_SearchGameDataStore

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SearchGameDataStore?

     func enableDefaultImplementation(_ stub: SearchGameDataStore) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var searchResults: [Game] {
        get {
            return cuckoo_manager.getter("searchResults",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.searchResults)
        }
        
    }
    

    

    

	 struct __StubbingProxy_SearchGameDataStore: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var searchResults: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockSearchGameDataStore, [Game]> {
	        return .init(manager: cuckoo_manager, name: "searchResults")
	    }
	    
	    
	}

	 struct __VerificationProxy_SearchGameDataStore: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var searchResults: Cuckoo.VerifyReadOnlyProperty<[Game]> {
	        return .init(manager: cuckoo_manager, name: "searchResults", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class SearchGameDataStoreStub: SearchGameDataStore {
    
    
     var searchResults: [Game] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([Game]).self)
        }
        
    }
    

    

    
}



 class MockSearchGameInteractor: SearchGameInteractor, Cuckoo.ClassMock {
    
     typealias MocksType = SearchGameInteractor
    
     typealias Stubbing = __StubbingProxy_SearchGameInteractor
     typealias Verification = __VerificationProxy_SearchGameInteractor

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SearchGameInteractor?

     func enableDefaultImplementation(_ stub: SearchGameInteractor) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var presenter: SearchGamePresentationLogic? {
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
    
    
    
     override var repository: GamesRepository {
        get {
            return cuckoo_manager.getter("repository",
                superclassCall:
                    
                    super.repository
                    ,
                defaultCall: __defaultImplStub!.repository)
        }
        
        set {
            cuckoo_manager.setter("repository",
                value: newValue,
                superclassCall:
                    
                    super.repository = newValue
                    ,
                defaultCall: __defaultImplStub!.repository = newValue)
        }
        
    }
    
    
    
     override var searchResults: [Game] {
        get {
            return cuckoo_manager.getter("searchResults",
                superclassCall:
                    
                    super.searchResults
                    ,
                defaultCall: __defaultImplStub!.searchResults)
        }
        
        set {
            cuckoo_manager.setter("searchResults",
                value: newValue,
                superclassCall:
                    
                    super.searchResults = newValue
                    ,
                defaultCall: __defaultImplStub!.searchResults = newValue)
        }
        
    }
    

    

    
    
    
     override func searchForGame(request: SearchGame.SearchForGame.Request)  {
        
    return cuckoo_manager.call("searchForGame(request: SearchGame.SearchForGame.Request)",
            parameters: (request),
            escapingParameters: (request),
            superclassCall:
                
                super.searchForGame(request: request)
                ,
            defaultCall: __defaultImplStub!.searchForGame(request: request))
        
    }
    

	 struct __StubbingProxy_SearchGameInteractor: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var presenter: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameInteractor, SearchGamePresentationLogic> {
	        return .init(manager: cuckoo_manager, name: "presenter")
	    }
	    
	    
	    var repository: Cuckoo.ClassToBeStubbedProperty<MockSearchGameInteractor, GamesRepository> {
	        return .init(manager: cuckoo_manager, name: "repository")
	    }
	    
	    
	    var searchResults: Cuckoo.ClassToBeStubbedProperty<MockSearchGameInteractor, [Game]> {
	        return .init(manager: cuckoo_manager, name: "searchResults")
	    }
	    
	    
	    func searchForGame<M1: Cuckoo.Matchable>(request: M1) -> Cuckoo.ClassStubNoReturnFunction<(SearchGame.SearchForGame.Request)> where M1.MatchedType == SearchGame.SearchForGame.Request {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGame.SearchForGame.Request)>] = [wrap(matchable: request) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameInteractor.self, method: "searchForGame(request: SearchGame.SearchForGame.Request)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchGameInteractor: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var presenter: Cuckoo.VerifyOptionalProperty<SearchGamePresentationLogic> {
	        return .init(manager: cuckoo_manager, name: "presenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var repository: Cuckoo.VerifyProperty<GamesRepository> {
	        return .init(manager: cuckoo_manager, name: "repository", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var searchResults: Cuckoo.VerifyProperty<[Game]> {
	        return .init(manager: cuckoo_manager, name: "searchResults", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func searchForGame<M1: Cuckoo.Matchable>(request: M1) -> Cuckoo.__DoNotUse<(SearchGame.SearchForGame.Request), Void> where M1.MatchedType == SearchGame.SearchForGame.Request {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGame.SearchForGame.Request)>] = [wrap(matchable: request) { $0 }]
	        return cuckoo_manager.verify("searchForGame(request: SearchGame.SearchForGame.Request)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGameInteractorStub: SearchGameInteractor {
    
    
     override var presenter: SearchGamePresentationLogic? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGamePresentationLogic?).self)
        }
        
        set { }
        
    }
    
    
     override var repository: GamesRepository {
        get {
            return DefaultValueRegistry.defaultValue(for: (GamesRepository).self)
        }
        
        set { }
        
    }
    
    
     override var searchResults: [Game] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([Game]).self)
        }
        
        set { }
        
    }
    

    

    
     override func searchForGame(request: SearchGame.SearchForGame.Request)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

