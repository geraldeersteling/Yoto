// MARK: - Mocks generated from file: YotoiOS/Sources/Scenes/GameDetails/GameDetailsViewController.swift at 2020-10-31 14:34:00 +0000

//
//  GameDetailsViewController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import YotoiOS

import Resolver
import UIKit
import YotoKit


 class MockGameDetailsViewController: GameDetailsViewController, Cuckoo.ClassMock {
    
     typealias MocksType = GameDetailsViewController
    
     typealias Stubbing = __StubbingProxy_GameDetailsViewController
     typealias Verification = __VerificationProxy_GameDetailsViewController

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameDetailsViewController?

     func enableDefaultImplementation(_ stub: GameDetailsViewController) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var viewModel: GameDetailsViewModel {
        get {
            return cuckoo_manager.getter("viewModel",
                superclassCall:
                    
                    super.viewModel
                    ,
                defaultCall: __defaultImplStub!.viewModel)
        }
        
        set {
            cuckoo_manager.setter("viewModel",
                value: newValue,
                superclassCall:
                    
                    super.viewModel = newValue
                    ,
                defaultCall: __defaultImplStub!.viewModel = newValue)
        }
        
    }
    
    
    
     override var coverImage: UIImageView! {
        get {
            return cuckoo_manager.getter("coverImage",
                superclassCall:
                    
                    super.coverImage
                    ,
                defaultCall: __defaultImplStub!.coverImage)
        }
        
        set {
            cuckoo_manager.setter("coverImage",
                value: newValue,
                superclassCall:
                    
                    super.coverImage = newValue
                    ,
                defaultCall: __defaultImplStub!.coverImage = newValue)
        }
        
    }
    
    
    
     override var nameLabel: UILabel! {
        get {
            return cuckoo_manager.getter("nameLabel",
                superclassCall:
                    
                    super.nameLabel
                    ,
                defaultCall: __defaultImplStub!.nameLabel)
        }
        
        set {
            cuckoo_manager.setter("nameLabel",
                value: newValue,
                superclassCall:
                    
                    super.nameLabel = newValue
                    ,
                defaultCall: __defaultImplStub!.nameLabel = newValue)
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
    

	 struct __StubbingProxy_GameDetailsViewController: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var viewModel: Cuckoo.ClassToBeStubbedProperty<MockGameDetailsViewController, GameDetailsViewModel> {
	        return .init(manager: cuckoo_manager, name: "viewModel")
	    }
	    
	    
	    var coverImage: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameDetailsViewController, UIImageView> {
	        return .init(manager: cuckoo_manager, name: "coverImage")
	    }
	    
	    
	    var nameLabel: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameDetailsViewController, UILabel> {
	        return .init(manager: cuckoo_manager, name: "nameLabel")
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGameDetailsViewController.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameDetailsViewController: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var viewModel: Cuckoo.VerifyProperty<GameDetailsViewModel> {
	        return .init(manager: cuckoo_manager, name: "viewModel", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var coverImage: Cuckoo.VerifyOptionalProperty<UIImageView> {
	        return .init(manager: cuckoo_manager, name: "coverImage", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var nameLabel: Cuckoo.VerifyOptionalProperty<UILabel> {
	        return .init(manager: cuckoo_manager, name: "nameLabel", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameDetailsViewControllerStub: GameDetailsViewController {
    
    
     override var viewModel: GameDetailsViewModel {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameDetailsViewModel).self)
        }
        
        set { }
        
    }
    
    
     override var coverImage: UIImageView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIImageView?).self)
        }
        
        set { }
        
    }
    
    
     override var nameLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel?).self)
        }
        
        set { }
        
    }
    

    

    
     override func viewDidLoad()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

