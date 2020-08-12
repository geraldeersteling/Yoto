// MARK: - Mocks generated from file: Yoto/Sources/Services/Games/GamesRemoteRepository.swift at 2020-08-11 14:49:27 +0000

//
//  GamesRemoteRepository.swift
//  Yoto
//
//  Created by Gerald Eersteling on 04/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import Foundation
import Moya
import Moya_ObjectMapper
import RxSwift


 class MockGamesRemoteRepository: GamesRemoteRepository, Cuckoo.ClassMock {
    
     typealias MocksType = GamesRemoteRepository
    
     typealias Stubbing = __StubbingProxy_GamesRemoteRepository
     typealias Verification = __VerificationProxy_GamesRemoteRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GamesRemoteRepository?

     func enableDefaultImplementation(_ stub: GamesRemoteRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func searchGames(_ query: String, completion: @escaping ([Game]) -> Void)  {
        
    return cuckoo_manager.call("searchGames(_: String, completion: @escaping ([Game]) -> Void)",
            parameters: (query, completion),
            escapingParameters: (query, completion),
            superclassCall:
                
                super.searchGames(query, completion: completion)
                ,
            defaultCall: __defaultImplStub!.searchGames(query, completion: completion))
        
    }
    
    
    
     override func fetchGameDetails(gameID: Int, completion: @escaping (Game) -> Void)  {
        
    return cuckoo_manager.call("fetchGameDetails(gameID: Int, completion: @escaping (Game) -> Void)",
            parameters: (gameID, completion),
            escapingParameters: (gameID, completion),
            superclassCall:
                
                super.fetchGameDetails(gameID: gameID, completion: completion)
                ,
            defaultCall: __defaultImplStub!.fetchGameDetails(gameID: gameID, completion: completion))
        
    }
    

	 struct __StubbingProxy_GamesRemoteRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func searchGames<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ query: M1, completion: M2) -> Cuckoo.ClassStubNoReturnFunction<(String, ([Game]) -> Void)> where M1.MatchedType == String, M2.MatchedType == ([Game]) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, ([Game]) -> Void)>] = [wrap(matchable: query) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGamesRemoteRepository.self, method: "searchGames(_: String, completion: @escaping ([Game]) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func fetchGameDetails<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(gameID: M1, completion: M2) -> Cuckoo.ClassStubNoReturnFunction<(Int, (Game) -> Void)> where M1.MatchedType == Int, M2.MatchedType == (Game) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Int, (Game) -> Void)>] = [wrap(matchable: gameID) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGamesRemoteRepository.self, method: "fetchGameDetails(gameID: Int, completion: @escaping (Game) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GamesRemoteRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func searchGames<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ query: M1, completion: M2) -> Cuckoo.__DoNotUse<(String, ([Game]) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == ([Game]) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, ([Game]) -> Void)>] = [wrap(matchable: query) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("searchGames(_: String, completion: @escaping ([Game]) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func fetchGameDetails<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(gameID: M1, completion: M2) -> Cuckoo.__DoNotUse<(Int, (Game) -> Void), Void> where M1.MatchedType == Int, M2.MatchedType == (Game) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Int, (Game) -> Void)>] = [wrap(matchable: gameID) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("fetchGameDetails(gameID: Int, completion: @escaping (Game) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GamesRemoteRepositoryStub: GamesRemoteRepository {
    

    

    
     override func searchGames(_ query: String, completion: @escaping ([Game]) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func fetchGameDetails(gameID: Int, completion: @escaping (Game) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

