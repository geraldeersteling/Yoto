// MARK: - Mocks generated from file: YotoKit/Sources/Services/Games/SearchGamesRemoteRepository.swift at 2020-10-31 14:33:59 +0000

//
//  GamesRemoteRepository.swift
//  Yoto
//
//  Created by Gerald Eersteling on 04/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import YotoKit

import Foundation
import Moya
import Moya_ObjectMapper
import Resolver
import RxSwift


public class MockSearchGamesRemoteRepository: SearchGamesRemoteRepository, Cuckoo.ClassMock {
    
    public typealias MocksType = SearchGamesRemoteRepository
    
    public typealias Stubbing = __StubbingProxy_SearchGamesRemoteRepository
    public typealias Verification = __VerificationProxy_SearchGamesRemoteRepository

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SearchGamesRemoteRepository?

    public func enableDefaultImplementation(_ stub: SearchGamesRemoteRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public override func searchGames(_ query: String) -> Single<[Game]> {
        
    return cuckoo_manager.call("searchGames(_: String) -> Single<[Game]>",
            parameters: (query),
            escapingParameters: (query),
            superclassCall:
                
                super.searchGames(query)
                ,
            defaultCall: __defaultImplStub!.searchGames(query))
        
    }
    
    
    
    public override func fetchGameDetails(uri: GameUri) -> Single<Game> {
        
    return cuckoo_manager.call("fetchGameDetails(uri: GameUri) -> Single<Game>",
            parameters: (uri),
            escapingParameters: (uri),
            superclassCall:
                
                super.fetchGameDetails(uri: uri)
                ,
            defaultCall: __defaultImplStub!.fetchGameDetails(uri: uri))
        
    }
    

	public struct __StubbingProxy_SearchGamesRemoteRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func searchGames<M1: Cuckoo.Matchable>(_ query: M1) -> Cuckoo.ClassStubFunction<(String), Single<[Game]>> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: query) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGamesRemoteRepository.self, method: "searchGames(_: String) -> Single<[Game]>", parameterMatchers: matchers))
	    }
	    
	    func fetchGameDetails<M1: Cuckoo.Matchable>(uri: M1) -> Cuckoo.ClassStubFunction<(GameUri), Single<Game>> where M1.MatchedType == GameUri {
	        let matchers: [Cuckoo.ParameterMatcher<(GameUri)>] = [wrap(matchable: uri) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGamesRemoteRepository.self, method: "fetchGameDetails(uri: GameUri) -> Single<Game>", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_SearchGamesRemoteRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
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
	    func fetchGameDetails<M1: Cuckoo.Matchable>(uri: M1) -> Cuckoo.__DoNotUse<(GameUri), Single<Game>> where M1.MatchedType == GameUri {
	        let matchers: [Cuckoo.ParameterMatcher<(GameUri)>] = [wrap(matchable: uri) { $0 }]
	        return cuckoo_manager.verify("fetchGameDetails(uri: GameUri) -> Single<Game>", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

public class SearchGamesRemoteRepositoryStub: SearchGamesRemoteRepository {
    

    

    
    public override func searchGames(_ query: String) -> Single<[Game]>  {
        return DefaultValueRegistry.defaultValue(for: (Single<[Game]>).self)
    }
    
    public override func fetchGameDetails(uri: GameUri) -> Single<Game>  {
        return DefaultValueRegistry.defaultValue(for: (Single<Game>).self)
    }
    
}

