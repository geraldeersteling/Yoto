// MARK: - Mocks generated from file: Yoto/Sources/Scenes/GameList/Cells/GameListTableViewCell.swift at 2020-08-20 10:19:38 +0000

//
//  GameListTableViewCell.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import Yoto

import UIKit


 class MockGameListTableViewCell: GameListTableViewCell, Cuckoo.ClassMock {
    
     typealias MocksType = GameListTableViewCell
    
     typealias Stubbing = __StubbingProxy_GameListTableViewCell
     typealias Verification = __VerificationProxy_GameListTableViewCell

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameListTableViewCell?

     func enableDefaultImplementation(_ stub: GameListTableViewCell) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
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
    

    

    
    
    
     override func prepareForReuse()  {
        
    return cuckoo_manager.call("prepareForReuse()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.prepareForReuse()
                ,
            defaultCall: __defaultImplStub!.prepareForReuse())
        
    }
    
    
    
     override func updateWithGame(_ game: GameList.GetList.ViewModel.DisplayedGame)  {
        
    return cuckoo_manager.call("updateWithGame(_: GameList.GetList.ViewModel.DisplayedGame)",
            parameters: (game),
            escapingParameters: (game),
            superclassCall:
                
                super.updateWithGame(game)
                ,
            defaultCall: __defaultImplStub!.updateWithGame(game))
        
    }
    

	 struct __StubbingProxy_GameListTableViewCell: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var nameLabel: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameListTableViewCell, UILabel> {
	        return .init(manager: cuckoo_manager, name: "nameLabel")
	    }
	    
	    
	    func prepareForReuse() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListTableViewCell.self, method: "prepareForReuse()", parameterMatchers: matchers))
	    }
	    
	    func updateWithGame<M1: Cuckoo.Matchable>(_ game: M1) -> Cuckoo.ClassStubNoReturnFunction<(GameList.GetList.ViewModel.DisplayedGame)> where M1.MatchedType == GameList.GetList.ViewModel.DisplayedGame {
	        let matchers: [Cuckoo.ParameterMatcher<(GameList.GetList.ViewModel.DisplayedGame)>] = [wrap(matchable: game) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListTableViewCell.self, method: "updateWithGame(_: GameList.GetList.ViewModel.DisplayedGame)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_GameListTableViewCell: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var nameLabel: Cuckoo.VerifyOptionalProperty<UILabel> {
	        return .init(manager: cuckoo_manager, name: "nameLabel", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func prepareForReuse() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("prepareForReuse()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func updateWithGame<M1: Cuckoo.Matchable>(_ game: M1) -> Cuckoo.__DoNotUse<(GameList.GetList.ViewModel.DisplayedGame), Void> where M1.MatchedType == GameList.GetList.ViewModel.DisplayedGame {
	        let matchers: [Cuckoo.ParameterMatcher<(GameList.GetList.ViewModel.DisplayedGame)>] = [wrap(matchable: game) { $0 }]
	        return cuckoo_manager.verify("updateWithGame(_: GameList.GetList.ViewModel.DisplayedGame)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class GameListTableViewCellStub: GameListTableViewCell {
    
    
     override var nameLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel?).self)
        }
        
        set { }
        
    }
    

    

    
     override func prepareForReuse()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func updateWithGame(_ game: GameList.GetList.ViewModel.DisplayedGame)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

