// MARK: - Mocks generated from file: Yoto/Sources/Services/Games/GamesRepository.swift at 2020-08-19 13:10:15 +0000

//
//  GamesRepository.swift
//  Yoto
//
//  Created by Gerald Eersteling on 04/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import Foundation
import RxSwift


 class MockGamesRepository: GamesRepository, Cuckoo.ProtocolMock {
    
     typealias MocksType = GamesRepository
    
     typealias Stubbing = __StubbingProxy_GamesRepository
     typealias Verification = __VerificationProxy_GamesRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GamesRepository?

     func enableDefaultImplementation(_ stub: GamesRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func searchGames(_ query: String) -> Single<[Game]> {
        
    return cuckoo_manager.call("searchGames(_: String) -> Single<[Game]>",
            parameters: (query),
            escapingParameters: (query),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.searchGames(query))
        
    }
    
    
    
     func fetchGameDetails(gameID: Int) -> Single<Game> {
        
    return cuckoo_manager.call("fetchGameDetails(gameID: Int) -> Single<Game>",
            parameters: (gameID),
            escapingParameters: (gameID),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchGameDetails(gameID: gameID))
        
    }
    

	 struct __StubbingProxy_GamesRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func searchGames<M1: Cuckoo.Matchable>(_ query: M1) -> Cuckoo.ProtocolStubFunction<(String), Single<[Game]>> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: query) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGamesRepository.self, method: "searchGames(_: String) -> Single<[Game]>", parameterMatchers: matchers))
	    }
	    
	    func fetchGameDetails<M1: Cuckoo.Matchable>(gameID: M1) -> Cuckoo.ProtocolStubFunction<(Int), Single<Game>> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: gameID) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGamesRepository.self, method: "fetchGameDetails(gameID: Int) -> Single<Game>", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GamesRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func searchGames<M1: Cuckoo.Matchable>(_ query: M1) -> Cuckoo.__DoNotUse<(String), Single<[Game]>> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: query) { $0 }]
	        return cuckoo_manager.verify("searchGames(_: String) -> Single<[Game]>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func fetchGameDetails<M1: Cuckoo.Matchable>(gameID: M1) -> Cuckoo.__DoNotUse<(Int), Single<Game>> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: gameID) { $0 }]
	        return cuckoo_manager.verify("fetchGameDetails(gameID: Int) -> Single<Game>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GamesRepositoryStub: GamesRepository {
    

    

    
     func searchGames(_ query: String) -> Single<[Game]>  {
        return DefaultValueRegistry.defaultValue(for: (Single<[Game]>).self)
    }
    
     func fetchGameDetails(gameID: Int) -> Single<Game>  {
        return DefaultValueRegistry.defaultValue(for: (Single<Game>).self)
    }
    
}

