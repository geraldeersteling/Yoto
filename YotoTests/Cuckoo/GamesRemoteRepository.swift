// MARK: - Mocks generated from file: Yoto/Sources/Services/Games/GamesRemoteRepository.swift at 2020-08-19 13:10:15 +0000

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
    

    

    

    
    
    
     override func searchGames(_ query: String) -> Single<[Game]> {
        
    return cuckoo_manager.call("searchGames(_: String) -> Single<[Game]>",
            parameters: (query),
            escapingParameters: (query),
            superclassCall:
                
                super.searchGames(query)
                ,
            defaultCall: __defaultImplStub!.searchGames(query))
        
    }
    
    
    
     override func fetchGameDetails(gameID: Int) -> Single<Game> {
        
    return cuckoo_manager.call("fetchGameDetails(gameID: Int) -> Single<Game>",
            parameters: (gameID),
            escapingParameters: (gameID),
            superclassCall:
                
                super.fetchGameDetails(gameID: gameID)
                ,
            defaultCall: __defaultImplStub!.fetchGameDetails(gameID: gameID))
        
    }
    

	 struct __StubbingProxy_GamesRemoteRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func searchGames<M1: Cuckoo.Matchable>(_ query: M1) -> Cuckoo.ClassStubFunction<(String), Single<[Game]>> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: query) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGamesRemoteRepository.self, method: "searchGames(_: String) -> Single<[Game]>", parameterMatchers: matchers))
	    }
	    
	    func fetchGameDetails<M1: Cuckoo.Matchable>(gameID: M1) -> Cuckoo.ClassStubFunction<(Int), Single<Game>> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: gameID) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGamesRemoteRepository.self, method: "fetchGameDetails(gameID: Int) -> Single<Game>", parameterMatchers: matchers))
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

 class GamesRemoteRepositoryStub: GamesRemoteRepository {
    

    

    
     override func searchGames(_ query: String) -> Single<[Game]>  {
        return DefaultValueRegistry.defaultValue(for: (Single<[Game]>).self)
    }
    
     override func fetchGameDetails(gameID: Int) -> Single<Game>  {
        return DefaultValueRegistry.defaultValue(for: (Single<Game>).self)
    }
    
}

