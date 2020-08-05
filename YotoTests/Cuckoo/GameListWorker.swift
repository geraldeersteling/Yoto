// MARK: - Mocks generated from file: Yoto/Sources/Scenes/GameList/GameListWorker.swift at 2020-08-05 11:14:22 +0000

//
//  GameListWorker.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Cuckoo
@testable import Yoto

import UIKit


 class MockGameListRepository: GameListRepository, Cuckoo.ProtocolMock {
    
     typealias MocksType = GameListRepository
    
     typealias Stubbing = __StubbingProxy_GameListRepository
     typealias Verification = __VerificationProxy_GameListRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GameListRepository?

     func enableDefaultImplementation(_ stub: GameListRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getGames(completion: ([Game]) -> Void)  {
        return withoutActuallyEscaping(completion, do: { (completion: @escaping ([Game]) -> Void) -> Void in

    return cuckoo_manager.call("getGames(completion: ([Game]) -> Void)",
            parameters: (completion),
            escapingParameters: ({ _ in fatalError("This is a stub! It's not supposed to be called!") }),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getGames(completion: completion))
        })

    }
    

	 struct __StubbingProxy_GameListRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getGames<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(([Game]) -> Void)> where M1.MatchedType == ([Game]) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([Game]) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListRepository.self, method: "getGames(completion: ([Game]) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameListRepository: Cuckoo.VerificationProxy {
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

 class GameListRepositoryStub: GameListRepository {
    

    

    
     func getGames(completion: ([Game]) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockGameListWorker: GameListWorker, Cuckoo.ClassMock {
    
     typealias MocksType = GameListWorker
    
     typealias Stubbing = __StubbingProxy_GameListWorker
     typealias Verification = __VerificationProxy_GameListWorker

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameListWorker?

     func enableDefaultImplementation(_ stub: GameListWorker) {
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
    

	 struct __StubbingProxy_GameListWorker: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getGames<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.ClassStubNoReturnFunction<(([Game]) -> Void)> where M1.MatchedType == ([Game]) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([Game]) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListWorker.self, method: "getGames(completion: ([Game]) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameListWorker: Cuckoo.VerificationProxy {
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

 class GameListWorkerStub: GameListWorker {
    

    

    
     override func getGames(completion: ([Game]) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

