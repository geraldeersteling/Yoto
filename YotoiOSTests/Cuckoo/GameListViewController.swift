// MARK: - Mocks generated from file: YotoiOS/Sources/Scenes/GameList/GameListViewController.swift at 2020-10-31 14:34:00 +0000

//
//  GameListViewController.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 31/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import YotoiOS

import Resolver
import UIKit
import YotoKit


public class MockGameListViewController: GameListViewController, Cuckoo.ClassMock {
    
    public typealias MocksType = GameListViewController
    
    public typealias Stubbing = __StubbingProxy_GameListViewController
    public typealias Verification = __VerificationProxy_GameListViewController

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameListViewController?

    public func enableDefaultImplementation(_ stub: GameListViewController) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public override var viewModel: GameListViewModel {
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
    
    
    
    public override var title: String? {
        get {
            return cuckoo_manager.getter("title",
                superclassCall:
                    
                    super.title
                    ,
                defaultCall: __defaultImplStub!.title)
        }
        
        set {
            cuckoo_manager.setter("title",
                value: newValue,
                superclassCall:
                    
                    super.title = newValue
                    ,
                defaultCall: __defaultImplStub!.title = newValue)
        }
        
    }
    

    

    
    
    
    public override func viewDidLoad()  {
        
    return cuckoo_manager.call("viewDidLoad()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.viewDidLoad()
                ,
            defaultCall: __defaultImplStub!.viewDidLoad())
        
    }
    

	public struct __StubbingProxy_GameListViewController: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var viewModel: Cuckoo.ClassToBeStubbedProperty<MockGameListViewController, GameListViewModel> {
	        return .init(manager: cuckoo_manager, name: "viewModel")
	    }
	    
	    
	    var title: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameListViewController, String> {
	        return .init(manager: cuckoo_manager, name: "title")
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListViewController.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_GameListViewController: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var viewModel: Cuckoo.VerifyProperty<GameListViewModel> {
	        return .init(manager: cuckoo_manager, name: "viewModel", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var title: Cuckoo.VerifyOptionalProperty<String> {
	        return .init(manager: cuckoo_manager, name: "title", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

public class GameListViewControllerStub: GameListViewController {
    
    
    public override var viewModel: GameListViewModel {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameListViewModel).self)
        }
        
        set { }
        
    }
    
    
    public override var title: String? {
        get {
            return DefaultValueRegistry.defaultValue(for: (String?).self)
        }
        
        set { }
        
    }
    

    

    
    public override func viewDidLoad()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

