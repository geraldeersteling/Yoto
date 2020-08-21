// MARK: - Mocks generated from file: Yoto/Sources/Services/GameList/GameListMemRepository.swift at 2020-08-21 13:00:24 +0000

//
//  GameListMemRepository.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import Foundation


 class MockGameListMemRepository: GameListMemRepository, Cuckoo.ClassMock {
    
     typealias MocksType = GameListMemRepository
    
     typealias Stubbing = __StubbingProxy_GameListMemRepository
     typealias Verification = __VerificationProxy_GameListMemRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameListMemRepository?

     func enableDefaultImplementation(_ stub: GameListMemRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func getGames(completion: ([Game]) -> Void)  {
        return withoutActuallyEscaping(completion, do: { (completion: @escaping ([Game]) -> Void) -> Void in

    return cuckoo_manager.call("getGames(completion: ([Game]) -> Void)",
            parameters: (completion),
            escapingParameters: ({ _ in fatalError("This is a stub! It's not supposed to be called!") }),
            superclassCall:
                
                super.getGames(completion: completion)
                ,
            defaultCall: __defaultImplStub!.getGames(completion: completion))
        })

    }
    

	 struct __StubbingProxy_GameListMemRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getGames<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.ClassStubNoReturnFunction<(([Game]) -> Void)> where M1.MatchedType == ([Game]) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([Game]) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListMemRepository.self, method: "getGames(completion: ([Game]) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameListMemRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getGames<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.__DoNotUse<(([Game]) -> Void), Void> where M1.MatchedType == ([Game]) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([Game]) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("getGames(completion: ([Game]) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameListMemRepositoryStub: GameListMemRepository {
    

    

    
     override func getGames(completion: ([Game]) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

