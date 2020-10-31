// MARK: - Mocks generated from file: YotoKit/Sources/Services/Games/GamesInMemoryRepository.swift at 2020-10-31 14:33:59 +0000

//
//  GamesInMemoryRepository.swift
//  YotoKit
//
//  Created by Gerald Eersteling on 31/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import YotoKit

import Foundation


public class MockGamesInMemoryRepository: GamesInMemoryRepository, Cuckoo.ClassMock {
    
    public typealias MocksType = GamesInMemoryRepository
    
    public typealias Stubbing = __StubbingProxy_GamesInMemoryRepository
    public typealias Verification = __VerificationProxy_GamesInMemoryRepository

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GamesInMemoryRepository?

    public func enableDefaultImplementation(_ stub: GamesInMemoryRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public override func allGames() -> [Game] {
        
    return cuckoo_manager.call("allGames() -> [Game]",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.allGames()
                ,
            defaultCall: __defaultImplStub!.allGames())
        
    }
    

	public struct __StubbingProxy_GamesInMemoryRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func allGames() -> Cuckoo.ClassStubFunction<(), [Game]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGamesInMemoryRepository.self, method: "allGames() -> [Game]", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_GamesInMemoryRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func allGames() -> Cuckoo.__DoNotUse<(), [Game]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("allGames() -> [Game]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

public class GamesInMemoryRepositoryStub: GamesInMemoryRepository {
    

    

    
    public override func allGames() -> [Game]  {
        return DefaultValueRegistry.defaultValue(for: ([Game]).self)
    }
    
}

