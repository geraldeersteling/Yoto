// MARK: - Mocks generated from file: Yoto/Sources/Scenes/SearchGame/SearchGameViewController.swift at 2020-08-05 11:14:22 +0000

//
//  SearchGameViewController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockSearchGameDisplayLogic: SearchGameDisplayLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = SearchGameDisplayLogic
    
     typealias Stubbing = __StubbingProxy_SearchGameDisplayLogic
     typealias Verification = __VerificationProxy_SearchGameDisplayLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SearchGameDisplayLogic?

     func enableDefaultImplementation(_ stub: SearchGameDisplayLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func displaySearchForGameResults(viewModel: SearchGame.SearchForGame.ViewModel)  {
        
    return cuckoo_manager.call("displaySearchForGameResults(viewModel: SearchGame.SearchForGame.ViewModel)",
            parameters: (viewModel),
            escapingParameters: (viewModel),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.displaySearchForGameResults(viewModel: viewModel))
        
    }
    

	 struct __StubbingProxy_SearchGameDisplayLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func displaySearchForGameResults<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(SearchGame.SearchForGame.ViewModel)> where M1.MatchedType == SearchGame.SearchForGame.ViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGame.SearchForGame.ViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameDisplayLogic.self, method: "displaySearchForGameResults(viewModel: SearchGame.SearchForGame.ViewModel)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchGameDisplayLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func displaySearchForGameResults<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.__DoNotUse<(SearchGame.SearchForGame.ViewModel), Void> where M1.MatchedType == SearchGame.SearchForGame.ViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGame.SearchForGame.ViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return cuckoo_manager.verify("displaySearchForGameResults(viewModel: SearchGame.SearchForGame.ViewModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGameDisplayLogicStub: SearchGameDisplayLogic {
    

    

    
     func displaySearchForGameResults(viewModel: SearchGame.SearchForGame.ViewModel)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



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
    

    
    
    
     override var interactor: SearchGameBusinessLogic? {
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
    
    
    
     override var router: (NSObjectProtocol & SearchGameRoutingLogic & SearchGameDataPassing)? {
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
    
    
    
     override var searchResults: [SearchGame.SearchForGame.ViewModel.DisplayedGame] {
        get {
            return cuckoo_manager.getter("searchResults",
                superclassCall:
                    
                    super.searchResults
                    ,
                defaultCall: __defaultImplStub!.searchResults)
        }
        
        set {
            cuckoo_manager.setter("searchResults",
                value: newValue,
                superclassCall:
                    
                    super.searchResults = newValue
                    ,
                defaultCall: __defaultImplStub!.searchResults = newValue)
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
    
    
    
     override func searchForGame(_ name: String)  {
        
    return cuckoo_manager.call("searchForGame(_: String)",
            parameters: (name),
            escapingParameters: (name),
            superclassCall:
                
                super.searchForGame(name)
                ,
            defaultCall: __defaultImplStub!.searchForGame(name))
        
    }
    
    
    
     override func displaySearchForGameResults(viewModel: SearchGame.SearchForGame.ViewModel)  {
        
    return cuckoo_manager.call("displaySearchForGameResults(viewModel: SearchGame.SearchForGame.ViewModel)",
            parameters: (viewModel),
            escapingParameters: (viewModel),
            superclassCall:
                
                super.displaySearchForGameResults(viewModel: viewModel)
                ,
            defaultCall: __defaultImplStub!.displaySearchForGameResults(viewModel: viewModel))
        
    }
    

	 struct __StubbingProxy_SearchGameViewController: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var interactor: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameViewController, SearchGameBusinessLogic> {
	        return .init(manager: cuckoo_manager, name: "interactor")
	    }
	    
	    
	    var router: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameViewController, (NSObjectProtocol & SearchGameRoutingLogic & SearchGameDataPassing)> {
	        return .init(manager: cuckoo_manager, name: "router")
	    }
	    
	    
	    var searchResults: Cuckoo.ClassToBeStubbedProperty<MockSearchGameViewController, [SearchGame.SearchForGame.ViewModel.DisplayedGame]> {
	        return .init(manager: cuckoo_manager, name: "searchResults")
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
	    
	    func searchForGame<M1: Cuckoo.Matchable>(_ name: M1) -> Cuckoo.ClassStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: name) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameViewController.self, method: "searchForGame(_: String)", parameterMatchers: matchers))
	    }
	    
	    func displaySearchForGameResults<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.ClassStubNoReturnFunction<(SearchGame.SearchForGame.ViewModel)> where M1.MatchedType == SearchGame.SearchForGame.ViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGame.SearchForGame.ViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameViewController.self, method: "displaySearchForGameResults(viewModel: SearchGame.SearchForGame.ViewModel)", parameterMatchers: matchers))
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
	
	    
	    
	    var interactor: Cuckoo.VerifyOptionalProperty<SearchGameBusinessLogic> {
	        return .init(manager: cuckoo_manager, name: "interactor", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var router: Cuckoo.VerifyOptionalProperty<(NSObjectProtocol & SearchGameRoutingLogic & SearchGameDataPassing)> {
	        return .init(manager: cuckoo_manager, name: "router", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var searchResults: Cuckoo.VerifyProperty<[SearchGame.SearchForGame.ViewModel.DisplayedGame]> {
	        return .init(manager: cuckoo_manager, name: "searchResults", callMatcher: callMatcher, sourceLocation: sourceLocation)
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
	    func searchForGame<M1: Cuckoo.Matchable>(_ name: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: name) { $0 }]
	        return cuckoo_manager.verify("searchForGame(_: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func displaySearchForGameResults<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.__DoNotUse<(SearchGame.SearchForGame.ViewModel), Void> where M1.MatchedType == SearchGame.SearchForGame.ViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGame.SearchForGame.ViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return cuckoo_manager.verify("displaySearchForGameResults(viewModel: SearchGame.SearchForGame.ViewModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGameViewControllerStub: SearchGameViewController {
    
    
     override var interactor: SearchGameBusinessLogic? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SearchGameBusinessLogic?).self)
        }
        
        set { }
        
    }
    
    
     override var router: (NSObjectProtocol & SearchGameRoutingLogic & SearchGameDataPassing)? {
        get {
            return DefaultValueRegistry.defaultValue(for: ((NSObjectProtocol & SearchGameRoutingLogic & SearchGameDataPassing)?).self)
        }
        
        set { }
        
    }
    
    
     override var searchResults: [SearchGame.SearchForGame.ViewModel.DisplayedGame] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([SearchGame.SearchForGame.ViewModel.DisplayedGame]).self)
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
    
     override func searchForGame(_ name: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func displaySearchForGameResults(viewModel: SearchGame.SearchForGame.ViewModel)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

