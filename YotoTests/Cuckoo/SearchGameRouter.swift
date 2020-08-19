// MARK: - Mocks generated from file: Yoto/Sources/Scenes/SearchGame/SearchGameRouter.swift at 2020-08-19 13:10:15 +0000

//
//  SearchGameRouter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import Resolver
import UIKit


 class MockSearchGameRoutingLogic: SearchGameRoutingLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = SearchGameRoutingLogic
    
     typealias Stubbing = __StubbingProxy_SearchGameRoutingLogic
     typealias Verification = __VerificationProxy_SearchGameRoutingLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SearchGameRoutingLogic?

     func enableDefaultImplementation(_ stub: SearchGameRoutingLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func routeToGameSearchDetails(_ uri: GameUri, from viewController: UIViewController?)  {
        
    return cuckoo_manager.call("routeToGameSearchDetails(_: GameUri, from: UIViewController?)",
            parameters: (uri, viewController),
            escapingParameters: (uri, viewController),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.routeToGameSearchDetails(uri, from: viewController))
        
    }
    

	 struct __StubbingProxy_SearchGameRoutingLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func routeToGameSearchDetails<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(_ uri: M1, from viewController: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(GameUri, UIViewController?)> where M1.MatchedType == GameUri, M2.OptionalMatchedType == UIViewController {
	        let matchers: [Cuckoo.ParameterMatcher<(GameUri, UIViewController?)>] = [wrap(matchable: uri) { $0.0 }, wrap(matchable: viewController) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameRoutingLogic.self, method: "routeToGameSearchDetails(_: GameUri, from: UIViewController?)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchGameRoutingLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func routeToGameSearchDetails<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(_ uri: M1, from viewController: M2) -> Cuckoo.__DoNotUse<(GameUri, UIViewController?), Void> where M1.MatchedType == GameUri, M2.OptionalMatchedType == UIViewController {
	        let matchers: [Cuckoo.ParameterMatcher<(GameUri, UIViewController?)>] = [wrap(matchable: uri) { $0.0 }, wrap(matchable: viewController) { $0.1 }]
	        return cuckoo_manager.verify("routeToGameSearchDetails(_: GameUri, from: UIViewController?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGameRoutingLogicStub: SearchGameRoutingLogic {
    

    

    
     func routeToGameSearchDetails(_ uri: GameUri, from viewController: UIViewController?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockSearchGameRouter: SearchGameRouter, Cuckoo.ClassMock {
    
     typealias MocksType = SearchGameRouter
    
     typealias Stubbing = __StubbingProxy_SearchGameRouter
     typealias Verification = __VerificationProxy_SearchGameRouter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SearchGameRouter?

     func enableDefaultImplementation(_ stub: SearchGameRouter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func routeToGameSearchDetails(_ uri: GameUri, from viewController: UIViewController?)  {
        
    return cuckoo_manager.call("routeToGameSearchDetails(_: GameUri, from: UIViewController?)",
            parameters: (uri, viewController),
            escapingParameters: (uri, viewController),
            superclassCall:
                
                super.routeToGameSearchDetails(uri, from: viewController)
                ,
            defaultCall: __defaultImplStub!.routeToGameSearchDetails(uri, from: viewController))
        
    }
    

	 struct __StubbingProxy_SearchGameRouter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func routeToGameSearchDetails<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(_ uri: M1, from viewController: M2) -> Cuckoo.ClassStubNoReturnFunction<(GameUri, UIViewController?)> where M1.MatchedType == GameUri, M2.OptionalMatchedType == UIViewController {
	        let matchers: [Cuckoo.ParameterMatcher<(GameUri, UIViewController?)>] = [wrap(matchable: uri) { $0.0 }, wrap(matchable: viewController) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameRouter.self, method: "routeToGameSearchDetails(_: GameUri, from: UIViewController?)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchGameRouter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func routeToGameSearchDetails<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(_ uri: M1, from viewController: M2) -> Cuckoo.__DoNotUse<(GameUri, UIViewController?), Void> where M1.MatchedType == GameUri, M2.OptionalMatchedType == UIViewController {
	        let matchers: [Cuckoo.ParameterMatcher<(GameUri, UIViewController?)>] = [wrap(matchable: uri) { $0.0 }, wrap(matchable: viewController) { $0.1 }]
	        return cuckoo_manager.verify("routeToGameSearchDetails(_: GameUri, from: UIViewController?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGameRouterStub: SearchGameRouter {
    

    

    
     override func routeToGameSearchDetails(_ uri: GameUri, from viewController: UIViewController?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

