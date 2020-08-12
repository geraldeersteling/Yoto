// MARK: - Mocks generated from file: Yoto/Sources/Scenes/GameList/GameListViewController.swift at 2020-08-11 14:49:27 +0000

//
//  GameListViewController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import Cuckoo
@testable import Yoto

import UIKit


 class MockGameListDisplayLogic: GameListDisplayLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = GameListDisplayLogic
    
     typealias Stubbing = __StubbingProxy_GameListDisplayLogic
     typealias Verification = __VerificationProxy_GameListDisplayLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GameListDisplayLogic?

     func enableDefaultImplementation(_ stub: GameListDisplayLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func displayGameList(viewModel: GameList.GetList.ViewModel)  {
        
    return cuckoo_manager.call("displayGameList(viewModel: GameList.GetList.ViewModel)",
            parameters: (viewModel),
            escapingParameters: (viewModel),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.displayGameList(viewModel: viewModel))
        
    }
    

	 struct __StubbingProxy_GameListDisplayLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func displayGameList<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(GameList.GetList.ViewModel)> where M1.MatchedType == GameList.GetList.ViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(GameList.GetList.ViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListDisplayLogic.self, method: "displayGameList(viewModel: GameList.GetList.ViewModel)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameListDisplayLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func displayGameList<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.__DoNotUse<(GameList.GetList.ViewModel), Void> where M1.MatchedType == GameList.GetList.ViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(GameList.GetList.ViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return cuckoo_manager.verify("displayGameList(viewModel: GameList.GetList.ViewModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameListDisplayLogicStub: GameListDisplayLogic {
    

    

    
     func displayGameList(viewModel: GameList.GetList.ViewModel)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockGameListViewController: GameListViewController, Cuckoo.ClassMock {
    
     typealias MocksType = GameListViewController
    
     typealias Stubbing = __StubbingProxy_GameListViewController
     typealias Verification = __VerificationProxy_GameListViewController

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameListViewController?

     func enableDefaultImplementation(_ stub: GameListViewController) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     override var interactor: GameListBusinessLogic? {
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
    
    
    
     override var router: (NSObjectProtocol & GameListRoutingLogic & GameListDataPassing)? {
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
    
    
    
     override var gameList: [GameList.GetList.ViewModel.DisplayedGame] {
        get {
            return cuckoo_manager.getter("gameList",
                superclassCall:
                    
                    super.gameList
                    ,
                defaultCall: __defaultImplStub!.gameList)
        }
        
        set {
            cuckoo_manager.setter("gameList",
                value: newValue,
                superclassCall:
                    
                    super.gameList = newValue
                    ,
                defaultCall: __defaultImplStub!.gameList = newValue)
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
    
    
    
     override func getGameList()  {
        
    return cuckoo_manager.call("getGameList()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.getGameList()
                ,
            defaultCall: __defaultImplStub!.getGameList())
        
    }
    
    
    
     override func displayGameList(viewModel: GameList.GetList.ViewModel)  {
        
    return cuckoo_manager.call("displayGameList(viewModel: GameList.GetList.ViewModel)",
            parameters: (viewModel),
            escapingParameters: (viewModel),
            superclassCall:
                
                super.displayGameList(viewModel: viewModel)
                ,
            defaultCall: __defaultImplStub!.displayGameList(viewModel: viewModel))
        
    }
    
    
    
     override func setupTableView()  {
        
    return cuckoo_manager.call("setupTableView()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.setupTableView()
                ,
            defaultCall: __defaultImplStub!.setupTableView())
        
    }
    
    
    
     override func numberOfSections(in tableView: UITableView) -> Int {
        
    return cuckoo_manager.call("numberOfSections(in: UITableView) -> Int",
            parameters: (tableView),
            escapingParameters: (tableView),
            superclassCall:
                
                super.numberOfSections(in: tableView)
                ,
            defaultCall: __defaultImplStub!.numberOfSections(in: tableView))
        
    }
    
    
    
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    return cuckoo_manager.call("tableView(_: UITableView, numberOfRowsInSection: Int) -> Int",
            parameters: (tableView, section),
            escapingParameters: (tableView, section),
            superclassCall:
                
                super.tableView(tableView, numberOfRowsInSection: section)
                ,
            defaultCall: __defaultImplStub!.tableView(tableView, numberOfRowsInSection: section))
        
    }
    
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    return cuckoo_manager.call("tableView(_: UITableView, cellForRowAt: IndexPath) -> UITableViewCell",
            parameters: (tableView, indexPath),
            escapingParameters: (tableView, indexPath),
            superclassCall:
                
                super.tableView(tableView, cellForRowAt: indexPath)
                ,
            defaultCall: __defaultImplStub!.tableView(tableView, cellForRowAt: indexPath))
        
    }
    
    
    
     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        
    return cuckoo_manager.call("tableView(_: UITableView, didSelectRowAt: IndexPath)",
            parameters: (tableView, indexPath),
            escapingParameters: (tableView, indexPath),
            superclassCall:
                
                super.tableView(tableView, didSelectRowAt: indexPath)
                ,
            defaultCall: __defaultImplStub!.tableView(tableView, didSelectRowAt: indexPath))
        
    }
    

	 struct __StubbingProxy_GameListViewController: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var interactor: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameListViewController, GameListBusinessLogic> {
	        return .init(manager: cuckoo_manager, name: "interactor")
	    }
	    
	    
	    var router: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameListViewController, (NSObjectProtocol & GameListRoutingLogic & GameListDataPassing)> {
	        return .init(manager: cuckoo_manager, name: "router")
	    }
	    
	    
	    var gameList: Cuckoo.ClassToBeStubbedProperty<MockGameListViewController, [GameList.GetList.ViewModel.DisplayedGame]> {
	        return .init(manager: cuckoo_manager, name: "gameList")
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListViewController.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func getGameList() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListViewController.self, method: "getGameList()", parameterMatchers: matchers))
	    }
	    
	    func displayGameList<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.ClassStubNoReturnFunction<(GameList.GetList.ViewModel)> where M1.MatchedType == GameList.GetList.ViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(GameList.GetList.ViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListViewController.self, method: "displayGameList(viewModel: GameList.GetList.ViewModel)", parameterMatchers: matchers))
	    }
	    
	    func setupTableView() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListViewController.self, method: "setupTableView()", parameterMatchers: matchers))
	    }
	    
	    func numberOfSections<M1: Cuckoo.Matchable>(in tableView: M1) -> Cuckoo.ClassStubFunction<(UITableView), Int> where M1.MatchedType == UITableView {
	        let matchers: [Cuckoo.ParameterMatcher<(UITableView)>] = [wrap(matchable: tableView) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListViewController.self, method: "numberOfSections(in: UITableView) -> Int", parameterMatchers: matchers))
	    }
	    
	    func tableView<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ tableView: M1, numberOfRowsInSection section: M2) -> Cuckoo.ClassStubFunction<(UITableView, Int), Int> where M1.MatchedType == UITableView, M2.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(UITableView, Int)>] = [wrap(matchable: tableView) { $0.0 }, wrap(matchable: section) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListViewController.self, method: "tableView(_: UITableView, numberOfRowsInSection: Int) -> Int", parameterMatchers: matchers))
	    }
	    
	    func tableView<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ tableView: M1, cellForRowAt indexPath: M2) -> Cuckoo.ClassStubFunction<(UITableView, IndexPath), UITableViewCell> where M1.MatchedType == UITableView, M2.MatchedType == IndexPath {
	        let matchers: [Cuckoo.ParameterMatcher<(UITableView, IndexPath)>] = [wrap(matchable: tableView) { $0.0 }, wrap(matchable: indexPath) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListViewController.self, method: "tableView(_: UITableView, cellForRowAt: IndexPath) -> UITableViewCell", parameterMatchers: matchers))
	    }
	    
	    func tableView<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ tableView: M1, didSelectRowAt indexPath: M2) -> Cuckoo.ClassStubNoReturnFunction<(UITableView, IndexPath)> where M1.MatchedType == UITableView, M2.MatchedType == IndexPath {
	        let matchers: [Cuckoo.ParameterMatcher<(UITableView, IndexPath)>] = [wrap(matchable: tableView) { $0.0 }, wrap(matchable: indexPath) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListViewController.self, method: "tableView(_: UITableView, didSelectRowAt: IndexPath)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameListViewController: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var interactor: Cuckoo.VerifyOptionalProperty<GameListBusinessLogic> {
	        return .init(manager: cuckoo_manager, name: "interactor", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var router: Cuckoo.VerifyOptionalProperty<(NSObjectProtocol & GameListRoutingLogic & GameListDataPassing)> {
	        return .init(manager: cuckoo_manager, name: "router", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var gameList: Cuckoo.VerifyProperty<[GameList.GetList.ViewModel.DisplayedGame]> {
	        return .init(manager: cuckoo_manager, name: "gameList", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getGameList() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getGameList()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func displayGameList<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.__DoNotUse<(GameList.GetList.ViewModel), Void> where M1.MatchedType == GameList.GetList.ViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(GameList.GetList.ViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return cuckoo_manager.verify("displayGameList(viewModel: GameList.GetList.ViewModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func setupTableView() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("setupTableView()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func numberOfSections<M1: Cuckoo.Matchable>(in tableView: M1) -> Cuckoo.__DoNotUse<(UITableView), Int> where M1.MatchedType == UITableView {
	        let matchers: [Cuckoo.ParameterMatcher<(UITableView)>] = [wrap(matchable: tableView) { $0 }]
	        return cuckoo_manager.verify("numberOfSections(in: UITableView) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func tableView<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ tableView: M1, numberOfRowsInSection section: M2) -> Cuckoo.__DoNotUse<(UITableView, Int), Int> where M1.MatchedType == UITableView, M2.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(UITableView, Int)>] = [wrap(matchable: tableView) { $0.0 }, wrap(matchable: section) { $0.1 }]
	        return cuckoo_manager.verify("tableView(_: UITableView, numberOfRowsInSection: Int) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func tableView<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ tableView: M1, cellForRowAt indexPath: M2) -> Cuckoo.__DoNotUse<(UITableView, IndexPath), UITableViewCell> where M1.MatchedType == UITableView, M2.MatchedType == IndexPath {
	        let matchers: [Cuckoo.ParameterMatcher<(UITableView, IndexPath)>] = [wrap(matchable: tableView) { $0.0 }, wrap(matchable: indexPath) { $0.1 }]
	        return cuckoo_manager.verify("tableView(_: UITableView, cellForRowAt: IndexPath) -> UITableViewCell", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func tableView<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ tableView: M1, didSelectRowAt indexPath: M2) -> Cuckoo.__DoNotUse<(UITableView, IndexPath), Void> where M1.MatchedType == UITableView, M2.MatchedType == IndexPath {
	        let matchers: [Cuckoo.ParameterMatcher<(UITableView, IndexPath)>] = [wrap(matchable: tableView) { $0.0 }, wrap(matchable: indexPath) { $0.1 }]
	        return cuckoo_manager.verify("tableView(_: UITableView, didSelectRowAt: IndexPath)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameListViewControllerStub: GameListViewController {
    
    
     override var interactor: GameListBusinessLogic? {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameListBusinessLogic?).self)
        }
        
        set { }
        
    }
    
    
     override var router: (NSObjectProtocol & GameListRoutingLogic & GameListDataPassing)? {
        get {
            return DefaultValueRegistry.defaultValue(for: ((NSObjectProtocol & GameListRoutingLogic & GameListDataPassing)?).self)
        }
        
        set { }
        
    }
    
    
     override var gameList: [GameList.GetList.ViewModel.DisplayedGame] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([GameList.GetList.ViewModel.DisplayedGame]).self)
        }
        
        set { }
        
    }
    

    

    
     override func viewDidLoad()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func getGameList()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func displayGameList(viewModel: GameList.GetList.ViewModel)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func setupTableView()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func numberOfSections(in tableView: UITableView) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        return DefaultValueRegistry.defaultValue(for: (UITableViewCell).self)
    }
    
     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

