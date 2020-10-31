// MARK: - Mocks generated from file: YotoKit/Sources/Scenes/SearchGame/Tableview related/SearchGameTableViewCell.swift at 2020-10-31 14:21:27 +0000

//
//  SearchGameTableViewCell.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import YotoKit

import UIKit


 class MockSearchGameTableViewCell: SearchGameTableViewCell, Cuckoo.ClassMock {
    
     typealias MocksType = SearchGameTableViewCell
    
     typealias Stubbing = __StubbingProxy_SearchGameTableViewCell
     typealias Verification = __VerificationProxy_SearchGameTableViewCell

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SearchGameTableViewCell?

     func enableDefaultImplementation(_ stub: SearchGameTableViewCell) {
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
    
    
    
     override func updateWithItem(_ item: SearchGameTableItem)  {
        
    return cuckoo_manager.call("updateWithItem(_: SearchGameTableItem)",
            parameters: (item),
            escapingParameters: (item),
            superclassCall:
                
                super.updateWithItem(item)
                ,
            defaultCall: __defaultImplStub!.updateWithItem(item))
        
    }
    

	 struct __StubbingProxy_SearchGameTableViewCell: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var nameLabel: Cuckoo.ClassToBeStubbedOptionalProperty<MockSearchGameTableViewCell, UILabel> {
	        return .init(manager: cuckoo_manager, name: "nameLabel")
	    }
	    
	    
	    func prepareForReuse() -> Cuckoo.ClassStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameTableViewCell.self, method: "prepareForReuse()", parameterMatchers: matchers))
	    }
	    
	    func updateWithItem<M1: Cuckoo.Matchable>(_ item: M1) -> Cuckoo.ClassStubNoReturnFunction<(SearchGameTableItem)> where M1.MatchedType == SearchGameTableItem {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGameTableItem)>] = [wrap(matchable: item) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameTableViewCell.self, method: "updateWithItem(_: SearchGameTableItem)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SearchGameTableViewCell: Cuckoo.VerificationProxy {
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
	    func updateWithItem<M1: Cuckoo.Matchable>(_ item: M1) -> Cuckoo.__DoNotUse<(SearchGameTableItem), Void> where M1.MatchedType == SearchGameTableItem {
	        let matchers: [Cuckoo.ParameterMatcher<(SearchGameTableItem)>] = [wrap(matchable: item) { $0 }]
	        return cuckoo_manager.verify("updateWithItem(_: SearchGameTableItem)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SearchGameTableViewCellStub: SearchGameTableViewCell {
    
    
     override var nameLabel: UILabel! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UILabel?).self)
        }
        
        set { }
        
    }
    

    

    
     override func prepareForReuse()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func updateWithItem(_ item: SearchGameTableItem)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

