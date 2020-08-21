// MARK: - Mocks generated from file: Yoto/Sources/Scenes/SearchGameDetails/SearchGameDetailsViewController.swift at 2020-08-21 13:00:24 +0000

//
//  SearchGameDetailsViewController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 03/08/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Cuckoo
@testable import Yoto

import UIKit


 class MockSearchGameDetailsDisplayLogic: SearchGameDetailsDisplayLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = SearchGameDetailsDisplayLogic
    
     typealias Stubbing = __StubbingProxy_SearchGameDetailsDisplayLogic
     typealias Verification = __VerificationProxy_SearchGameDetailsDisplayLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SearchGameDetailsDisplayLogic?

     func enableDefaultImplementation(_ stub: SearchGameDetailsDisplayLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

	 struct __StubbingProxy_SearchGameDetailsDisplayLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	 struct __VerificationProxy_SearchGameDetailsDisplayLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}
}

 class SearchGameDetailsDisplayLogicStub: SearchGameDetailsDisplayLogic {
    

    

    
}



 class MockSearchGameDetailsViewController: SearchGameDetailsViewController, Cuckoo.ClassMock {
    
     typealias MocksType = SearchGameDetailsViewController
    
     typealias Stubbing = __StubbingProxy_SearchGameDetailsViewController
     typealias Verification = __VerificationProxy_SearchGameDetailsViewController

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SearchGameDetailsViewController?

     func enableDefaultImplementation(_ stub: SearchGameDetailsViewController) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var interactor: SearchGameDetailsBusinessLogic? {
        get {
            return cuckoo_manager.getter("interactor",
                superclassCall:
                    
                    super.interactor
                    ,
                defaultCall: __defaultImplStub!.interactor)
        }
        
        set {
            cuckoo_manager.setter("interactor",
                value: newValue,
                superclassCall:
                    
                    super.interactor = newValue
                    ,
                defaultCall: __defaultImplStub!.interactor = newValue)
        }
        
    }
    
    
    
     override var router: (NSObjectProtocol & SearchGameDetailsRoutingLogic & SearchGameDetailsDataPassing)? {
        get {
            return cuckoo_manager.getter("router",
                superclassCall:
                    
                    super.router
                    ,
                defaultCall: __defaultImplStub!.router)
        }
        
        set {
            cuckoo_manager.setter("router",
                value: newValue,
                superclassCall:
                    
                    super.router = newValue
                    ,
                defaultCall: __defaultImplStub!.router = newValue)
        }
        
    }
    

    

    
    
    
     override func viewDidLoad()  {
        
    return cuckoo_manager.call("viewDidLoad()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.viewDidLoad()
                ,
            defaultCall: __defaultImplStub!.viewDidLoad())
        
    }
    

	 struct __StubbingProxy_SearchGameDetailsViewController: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var interactor: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameDetailsViewController, SearchGameDetailsBusinessLogic> {
	        return .init(manager: cuckoo_manager, name: "interactor")
	    }
	    
	    
	    var router: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameDetailsViewController, (NSObjectProtocol & SearchGameDetailsRoutingLogic & SearchGameDetailsDataPassing)> {
	        return .init(manager: cuckoo_manager, name: "router")
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameDetailsViewController.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchGameDetailsViewController: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var interactor: Cuckoo.VerifyOptionalProperty<SearchGameDetailsBusinessLogic> {
	        return .init(manager: cuckoo_manager, name: "interactor", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var router: Cuckoo.VerifyOptionalProperty<(NSObjectProtocol & SearchGameDetailsRoutingLogic & SearchGameDetailsDataPassing)> {
	        return .init(manager: cuckoo_manager, name: "router", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGameDetailsViewControllerStub: SearchGameDetailsViewController {
    
    
     override var interactor: SearchGameDetailsBusinessLogic? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameDetailsBusinessLogic?).self)
        }
        
        set { }
        
    }
    
    
     override var router: (NSObjectProtocol & SearchGameDetailsRoutingLogic & SearchGameDetailsDataPassing)? {
        get {
            return DefaultValueRegistry.defaultValue(for: ((NSObjectProtocol & SearchGameDetailsRoutingLogic & SearchGameDetailsDataPassing)?).self)
        }
        
        set { }
        
    }
    

    

    
     override func viewDidLoad()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

