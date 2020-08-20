// MARK: - Mocks generated from file: Yoto/Sources/Scenes/SearchGame/SearchGameViewController.swift at 2020-08-20 10:19:38 +0000

//
//  SearchGameViewController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import Resolver
import RxCocoa
import RxSwift
import UIKit


 class MockSearchGameViewController: SearchGameViewController, Cuckoo.ClassMock {
    
     typealias MocksType = SearchGameViewController
    
     typealias Stubbing = __StubbingProxy_SearchGameViewController
     typealias Verification = __VerificationProxy_SearchGameViewController

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SearchGameViewController?

     func enableDefaultImplementation(_ stub: SearchGameViewController) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var viewModel: SearchGameViewModel {
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
    
    
    
     override var router: SearchGameRoutingLogic {
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
    
    
    
     override var tableView: UITableView! {
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
    
    
    
     override var title: String? {
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
    

    

    
    
    
     override func viewDidLoad()  {
        
    return cuckoo_manager.call("viewDidLoad()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.viewDidLoad()
                ,
            defaultCall: __defaultImplStub!.viewDidLoad())
        
    }
    
    
    
     override func customizeAppearance()  {
        
    return cuckoo_manager.call("customizeAppearance()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.customizeAppearance()
                ,
            defaultCall: __defaultImplStub!.customizeAppearance())
        
    }
    
    
    
     override func setupSearch()  {
        
    return cuckoo_manager.call("setupSearch()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.setupSearch()
                ,
            defaultCall: __defaultImplStub!.setupSearch())
        
    }
    
    
    
     override func setupBindings()  {
        
    return cuckoo_manager.call("setupBindings()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.setupBindings()
                ,
            defaultCall: __defaultImplStub!.setupBindings())
        
    }
    

	 struct __StubbingProxy_SearchGameViewController: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
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
	    
	    func customizeAppearance() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameViewController.self, method: "customizeAppearance()", parameterMatchers: matchers))
	    }
	    
	    func setupSearch() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameViewController.self, method: "setupSearch()", parameterMatchers: matchers))
	    }
	    
	    func setupBindings() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameViewController.self, method: "setupBindings()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchGameViewController: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
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
	    
	    @discardableResult
	    func customizeAppearance() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("customizeAppearance()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setupSearch() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setupSearch()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setupBindings() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setupBindings()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGameViewControllerStub: SearchGameViewController {
    
    
     override var viewModel: SearchGameViewModel {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameViewModel).self)
        }
        
        set { }
        
    }
    
    
     override var router: SearchGameRoutingLogic {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameRoutingLogic).self)
        }
        
        set { }
        
    }
    
    
     override var tableView: UITableView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UITableView?).self)
        }
        
        set { }
        
    }
    
    
     override var title: String? {
        get {
            return DefaultValueRegistry.defaultValue(for: (String?).self)
        }
        
        set { }
        
    }
    

    

    
     override func viewDidLoad()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func customizeAppearance()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func setupSearch()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func setupBindings()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

