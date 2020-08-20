// MARK: - Mocks generated from file: Yoto/Sources/Scenes/SearchGameDetails/SearchGameDetailsPresenter.swift at 2020-08-20 10:19:38 +0000

//
//  SearchGameDetailsPresenter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 03/08/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockSearchGameDetailsPresentationLogic: SearchGameDetailsPresentationLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = SearchGameDetailsPresentationLogic
    
     typealias Stubbing = __StubbingProxy_SearchGameDetailsPresentationLogic
     typealias Verification = __VerificationProxy_SearchGameDetailsPresentationLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SearchGameDetailsPresentationLogic?

     func enableDefaultImplementation(_ stub: SearchGameDetailsPresentationLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

	 struct __StubbingProxy_SearchGameDetailsPresentationLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	 struct __VerificationProxy_SearchGameDetailsPresentationLogic: Cuckoo.VerificationProxy {
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

 class SearchGameDetailsPresentationLogicStub: SearchGameDetailsPresentationLogic {
    

    

    
}



 class MockSearchGameDetailsPresenter: SearchGameDetailsPresenter, Cuckoo.ClassMock {
    
     typealias MocksType = SearchGameDetailsPresenter
    
     typealias Stubbing = __StubbingProxy_SearchGameDetailsPresenter
     typealias Verification = __VerificationProxy_SearchGameDetailsPresenter

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SearchGameDetailsPresenter?

     func enableDefaultImplementation(_ stub: SearchGameDetailsPresenter) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var viewController: SearchGameDetailsDisplayLogic? {
        get {
            return cuckoo_manager.getter("viewController",
                superclassCall:
                    
                    super.viewController
                    ,
                defaultCall: __defaultImplStub!.viewController)
        }
        
        set {
            cuckoo_manager.setter("viewController",
                value: newValue,
                superclassCall:
                    
                    super.viewController = newValue
                    ,
                defaultCall: __defaultImplStub!.viewController = newValue)
        }
        
    }
    

    

    

	 struct __StubbingProxy_SearchGameDetailsPresenter: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var viewController: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameDetailsPresenter, SearchGameDetailsDisplayLogic> {
	        return .init(manager: cuckoo_manager, name: "viewController")
	    }
	    
	    
	}

	 struct __VerificationProxy_SearchGameDetailsPresenter: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var viewController: Cuckoo.VerifyOptionalProperty<SearchGameDetailsDisplayLogic> {
	        return .init(manager: cuckoo_manager, name: "viewController", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class SearchGameDetailsPresenterStub: SearchGameDetailsPresenter {
    
    
     override var viewController: SearchGameDetailsDisplayLogic? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameDetailsDisplayLogic?).self)
        }
        
        set { }
        
    }
    

    

    
}

