// MARK: - Mocks generated from file: Yoto/Sources/Scenes/GameDetails/GameDetailsViewController.swift at 2020-08-19 13:10:15 +0000

//
//  GameDetailsViewController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockGameDetailsDisplayLogic: GameDetailsDisplayLogic, Cuckoo.ProtocolMock {
    
     typealias MocksType = GameDetailsDisplayLogic
    
     typealias Stubbing = __StubbingProxy_GameDetailsDisplayLogic
     typealias Verification = __VerificationProxy_GameDetailsDisplayLogic

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GameDetailsDisplayLogic?

     func enableDefaultImplementation(_ stub: GameDetailsDisplayLogic) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func displayGame(viewModel: GameDetails.GetGame.ViewModel)  {
        
    return cuckoo_manager.call("displayGame(viewModel: GameDetails.GetGame.ViewModel)",
            parameters: (viewModel),
            escapingParameters: (viewModel),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.displayGame(viewModel: viewModel))
        
    }
    

	 struct __StubbingProxy_GameDetailsDisplayLogic: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func displayGame<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(GameDetails.GetGame.ViewModel)> where M1.MatchedType == GameDetails.GetGame.ViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(GameDetails.GetGame.ViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameDetailsDisplayLogic.self, method: "displayGame(viewModel: GameDetails.GetGame.ViewModel)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameDetailsDisplayLogic: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func displayGame<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.__DoNotUse<(GameDetails.GetGame.ViewModel), Void> where M1.MatchedType == GameDetails.GetGame.ViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(GameDetails.GetGame.ViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return cuckoo_manager.verify("displayGame(viewModel: GameDetails.GetGame.ViewModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameDetailsDisplayLogicStub: GameDetailsDisplayLogic {
    

    

    
     func displayGame(viewModel: GameDetails.GetGame.ViewModel)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



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
    

    
    
    
     override var interactor: GameDetailsBusinessLogic? {
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
    
    
    
     override var router: (NSObjectProtocol & GameDetailsRoutingLogic & GameDetailsDataPassing)? {
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
    

    

    
    
    
     override func prepare(for segue: UIStoryboardSegue, sender parameter1: Any?)  {
        
    return cuckoo_manager.call("prepare(for: UIStoryboardSegue, sender: Any?)",
            parameters: (segue, parameter1),
            escapingParameters: (segue, parameter1),
            superclassCall:
                
                super.prepare(for: segue, sender: parameter1)
                ,
            defaultCall: __defaultImplStub!.prepare(for: segue, sender: parameter1))
        
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
    
    
    
     override func getGame()  {
        
    return cuckoo_manager.call("getGame()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.getGame()
                ,
            defaultCall: __defaultImplStub!.getGame())
        
    }
    
    
    
     override func displayGame(viewModel: GameDetails.GetGame.ViewModel)  {
        
    return cuckoo_manager.call("displayGame(viewModel: GameDetails.GetGame.ViewModel)",
            parameters: (viewModel),
            escapingParameters: (viewModel),
            superclassCall:
                
                super.displayGame(viewModel: viewModel)
                ,
            defaultCall: __defaultImplStub!.displayGame(viewModel: viewModel))
        
    }
    

	 struct __StubbingProxy_GameDetailsViewController: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var interactor: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameDetailsViewController, GameDetailsBusinessLogic> {
	        return .init(manager: cuckoo_manager, name: "interactor")
	    }
	    
	    
	    var router: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameDetailsViewController, (NSObjectProtocol & GameDetailsRoutingLogic & GameDetailsDataPassing)> {
	        return .init(manager: cuckoo_manager, name: "router")
	    }
	    
	    
	    var coverImage: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameDetailsViewController, UIImageView> {
	        return .init(manager: cuckoo_manager, name: "coverImage")
	    }
	    
	    
	    var nameLabel: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameDetailsViewController, UILabel> {
	        return .init(manager: cuckoo_manager, name: "nameLabel")
	    }
	    
	    
	    func prepare<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(for segue: M1, sender parameter1: M2) -> Cuckoo.ClassStubNoReturnFunction<(UIStoryboardSegue, Any?)> where M1.MatchedType == UIStoryboardSegue, M2.OptionalMatchedType == Any {
	        let matchers: [Cuckoo.ParameterMatcher<(UIStoryboardSegue, Any?)>] = [wrap(matchable: segue) { $0.0 }, wrap(matchable: parameter1) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameDetailsViewController.self, method: "prepare(for: UIStoryboardSegue, sender: Any?)", parameterMatchers: matchers))
	    }
	    
	    func viewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGameDetailsViewController.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func getGame() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGameDetailsViewController.self, method: "getGame()", parameterMatchers: matchers))
	    }
	    
	    func displayGame<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.ClassStubNoReturnFunction<(GameDetails.GetGame.ViewModel)> where M1.MatchedType == GameDetails.GetGame.ViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(GameDetails.GetGame.ViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameDetailsViewController.self, method: "displayGame(viewModel: GameDetails.GetGame.ViewModel)", parameterMatchers: matchers))
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
	
	    
	    
	    var interactor: Cuckoo.VerifyOptionalProperty<GameDetailsBusinessLogic> {
	        return .init(manager: cuckoo_manager, name: "interactor", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var router: Cuckoo.VerifyOptionalProperty<(NSObjectProtocol & GameDetailsRoutingLogic & GameDetailsDataPassing)> {
	        return .init(manager: cuckoo_manager, name: "router", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var coverImage: Cuckoo.VerifyOptionalProperty<UIImageView> {
	        return .init(manager: cuckoo_manager, name: "coverImage", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var nameLabel: Cuckoo.VerifyOptionalProperty<UILabel> {
	        return .init(manager: cuckoo_manager, name: "nameLabel", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func prepare<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(for segue: M1, sender parameter1: M2) -> Cuckoo.__DoNotUse<(UIStoryboardSegue, Any?), Void> where M1.MatchedType == UIStoryboardSegue, M2.OptionalMatchedType == Any {
	        let matchers: [Cuckoo.ParameterMatcher<(UIStoryboardSegue, Any?)>] = [wrap(matchable: segue) { $0.0 }, wrap(matchable: parameter1) { $0.1 }]
	        return cuckoo_manager.verify("prepare(for: UIStoryboardSegue, sender: Any?)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getGame() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getGame()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func displayGame<M1: Cuckoo.Matchable>(viewModel: M1) -> Cuckoo.__DoNotUse<(GameDetails.GetGame.ViewModel), Void> where M1.MatchedType == GameDetails.GetGame.ViewModel {
	        let matchers: [Cuckoo.ParameterMatcher<(GameDetails.GetGame.ViewModel)>] = [wrap(matchable: viewModel) { $0 }]
	        return cuckoo_manager.verify("displayGame(viewModel: GameDetails.GetGame.ViewModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameDetailsViewControllerStub: GameDetailsViewController {
    
    
     override var interactor: GameDetailsBusinessLogic? {
        get {
            return DefaultValueRegistry.defaultValue(for: (GameDetailsBusinessLogic?).self)
        }
        
        set { }
        
    }
    
    
     override var router: (NSObjectProtocol & GameDetailsRoutingLogic & GameDetailsDataPassing)? {
        get {
            return DefaultValueRegistry.defaultValue(for: ((NSObjectProtocol & GameDetailsRoutingLogic & GameDetailsDataPassing)?).self)
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
    

    

    
     override func prepare(for segue: UIStoryboardSegue, sender parameter1: Any?)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func viewDidLoad()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func getGame()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func displayGame(viewModel: GameDetails.GetGame.ViewModel)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

