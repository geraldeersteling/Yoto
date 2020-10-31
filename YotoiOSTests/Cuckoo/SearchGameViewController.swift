// MARK: - Mocks generated from file: YotoiOS/Sources/Scenes/SearchGame/SearchGameViewController.swift at 2020-10-31 14:34:00 +0000

//
//  SearchGameViewController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import YotoiOS

import Resolver
import RxCocoa
import RxSwift
import UIKit
import YotoKit


public class MockSearchGameViewController: SearchGameViewController, Cuckoo.ClassMock {
    
    public typealias MocksType = SearchGameViewController
    
    public typealias Stubbing = __StubbingProxy_SearchGameViewController
    public typealias Verification = __VerificationProxy_SearchGameViewController

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SearchGameViewController?

    public func enableDefaultImplementation(_ stub: SearchGameViewController) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public override var viewModel: SearchGameViewModel {
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
    
    
    
    public override var router: SearchGameRoutingLogic {
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
    
    
    
    public override var tableView: UITableView! {
        get {
            return cuckoo_manager.getter("tableView",
                superclassCall:
                    
                    super.tableView
                    ,
                defaultCall: __defaultImplStub!.tableView)
        }
        
        set {
            cuckoo_manager.setter("tableView",
                value: newValue,
                superclassCall:
                    
                    super.tableView = newValue
                    ,
                defaultCall: __defaultImplStub!.tableView = newValue)
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
    

	public struct __StubbingProxy_SearchGameViewController: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var viewModel: Cuckoo.ClassToBeStubbedProperty<MockSearchGameViewController, SearchGameViewModel> {
	        return .init(manager: cuckoo_manager, name: "viewModel")
	    }
	    
	    
	    var router: Cuckoo.ClassToBeStubbedProperty<MockSearchGameViewController, SearchGameRoutingLogic> {
	        return .init(manager: cuckoo_manager, name: "router")
	    }
	    
	    
	    var tableView: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameViewController, UITableView> {
	        return .init(manager: cuckoo_manager, name: "tableView")
	    }
	    
	    
	    var title: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameViewController, String> {
	        return .init(manager: cuckoo_manager, name: "title")
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameViewController.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_SearchGameViewController: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var viewModel: Cuckoo.VerifyProperty<SearchGameViewModel> {
	        return .init(manager: cuckoo_manager, name: "viewModel", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var router: Cuckoo.VerifyProperty<SearchGameRoutingLogic> {
	        return .init(manager: cuckoo_manager, name: "router", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var tableView: Cuckoo.VerifyOptionalProperty<UITableView> {
	        return .init(manager: cuckoo_manager, name: "tableView", callMatcher: callMatcher, sourceLocation: sourceLocation)
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

public class SearchGameViewControllerStub: SearchGameViewController {
    
    
    public override var viewModel: SearchGameViewModel {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameViewModel).self)
        }
        
        set { }
        
    }
    
    
    public override var router: SearchGameRoutingLogic {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameRoutingLogic).self)
        }
        
        set { }
        
    }
    
    
    public override var tableView: UITableView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UITableView?).self)
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

