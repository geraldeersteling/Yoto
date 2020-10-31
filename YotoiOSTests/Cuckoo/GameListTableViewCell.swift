// MARK: - Mocks generated from file: YotoiOS/Sources/Scenes/GameList/Cells/GameListTableViewCell.swift at 2020-10-31 14:34:00 +0000

//
//  GameListTableViewCell.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import YotoiOS

import UIKit
import YotoKit


public class MockGameListTableViewCell: GameListTableViewCell, Cuckoo.ClassMock {
    
    public typealias MocksType = GameListTableViewCell
    
    public typealias Stubbing = __StubbingProxy_GameListTableViewCell
    public typealias Verification = __VerificationProxy_GameListTableViewCell

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GameListTableViewCell?

    public func enableDefaultImplementation(_ stub: GameListTableViewCell) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public override var nameLabel: UILabel! {
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
    

    

    
    
    
    public override func prepareForReuse()  {
        
    return cuckoo_manager.call("prepareForReuse()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.prepareForReuse()
                ,
            defaultCall: __defaultImplStub!.prepareForReuse())
        
    }
    

	public struct __StubbingProxy_GameListTableViewCell: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var nameLabel: Cuckoo.ClassToBeStubbedOptionalProperty<MockGameListTableViewCell, UILabel> {
	        return .init(manager: cuckoo_manager, name: "nameLabel")
	    }
	    
	    
	    func prepareForReuse() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockGameListTableViewCell.self, method: "prepareForReuse()", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_GameListTableViewCell: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
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
	    
	}
}

public class GameListTableViewCellStub: GameListTableViewCell {
    
    
    public override var nameLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel?).self)
        }
        
        set { }
        
    }
    

    

    
    public override func prepareForReuse()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

