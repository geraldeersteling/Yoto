// MARK: - Mocks generated from file: YotoKit/Sources/Scenes/SearchGame/SearchGameViewModel.swift at 2020-10-31 14:33:59 +0000

//
//  SearchGameViewModel.swift
//  Yoto
//
//  Created by Gerald Eersteling on 12/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import YotoKit

import Foundation
import RxCocoa
import RxSwift
import RxSwiftExt
import RxSwiftUtilities


public class MockSearchGameViewModel: SearchGameViewModel, Cuckoo.ClassMock {
    
    public typealias MocksType = SearchGameViewModel
    
    public typealias Stubbing = __StubbingProxy_SearchGameViewModel
    public typealias Verification = __VerificationProxy_SearchGameViewModel

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SearchGameViewModel?

    public func enableDefaultImplementation(_ stub: SearchGameViewModel) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public override var searchQuery: PublishRelay<String> {
        get {
            return cuckoo_manager.getter("searchQuery",
                superclassCall:
                    
                    super.searchQuery
                    ,
                defaultCall: __defaultImplStub!.searchQuery)
        }
        
        set {
            cuckoo_manager.setter("searchQuery",
                value: newValue,
                superclassCall:
                    
                    super.searchQuery = newValue
                    ,
                defaultCall: __defaultImplStub!.searchQuery = newValue)
        }
        
    }
    
    
    
    public override var searchResults: Driver<[SearchGameTableSection]> {
        get {
            return cuckoo_manager.getter("searchResults",
                superclassCall:
                    
                    super.searchResults
                    ,
                defaultCall: __defaultImplStub!.searchResults)
        }
        
    }
    
    
    
    public override var isSearching: Driver<Bool> {
        get {
            return cuckoo_manager.getter("isSearching",
                superclassCall:
                    
                    super.isSearching
                    ,
                defaultCall: __defaultImplStub!.isSearching)
        }
        
    }
    
    
    
    public override var numberOfSections: Int {
        get {
            return cuckoo_manager.getter("numberOfSections",
                superclassCall:
                    
                    super.numberOfSections
                    ,
                defaultCall: __defaultImplStub!.numberOfSections)
        }
        
    }
    
    
    
    public override var numberOfSearchResults: Int {
        get {
            return cuckoo_manager.getter("numberOfSearchResults",
                superclassCall:
                    
                    super.numberOfSearchResults
                    ,
                defaultCall: __defaultImplStub!.numberOfSearchResults)
        }
        
    }
    

    

    
    
    
    public override func item(at index: Int) -> SearchGameTableItem? {
        
    return cuckoo_manager.call("item(at: Int) -> SearchGameTableItem?",
            parameters: (index),
            escapingParameters: (index),
            superclassCall:
                
                super.item(at: index)
                ,
            defaultCall: __defaultImplStub!.item(at: index))
        
    }
    
    
    
    public override func uriForGame(at index: Int) -> GameUri? {
        
    return cuckoo_manager.call("uriForGame(at: Int) -> GameUri?",
            parameters: (index),
            escapingParameters: (index),
            superclassCall:
                
                super.uriForGame(at: index)
                ,
            defaultCall: __defaultImplStub!.uriForGame(at: index))
        
    }
    

	public struct __StubbingProxy_SearchGameViewModel: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var searchQuery: Cuckoo.ClassToBeStubbedProperty<MockSearchGameViewModel, PublishRelay<String>> {
	        return .init(manager: cuckoo_manager, name: "searchQuery")
	    }
	    
	    
	    var searchResults: Cuckoo.ClassToBeStubbedReadOnlyProperty<MockSearchGameViewModel, Driver<[SearchGameTableSection]>> {
	        return .init(manager: cuckoo_manager, name: "searchResults")
	    }
	    
	    
	    var isSearching: Cuckoo.ClassToBeStubbedReadOnlyProperty<MockSearchGameViewModel, Driver<Bool>> {
	        return .init(manager: cuckoo_manager, name: "isSearching")
	    }
	    
	    
	    var numberOfSections: Cuckoo.ClassToBeStubbedReadOnlyProperty<MockSearchGameViewModel, Int> {
	        return .init(manager: cuckoo_manager, name: "numberOfSections")
	    }
	    
	    
	    var numberOfSearchResults: Cuckoo.ClassToBeStubbedReadOnlyProperty<MockSearchGameViewModel, Int> {
	        return .init(manager: cuckoo_manager, name: "numberOfSearchResults")
	    }
	    
	    
	    func item<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.ClassStubFunction<(Int), SearchGameTableItem?> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameViewModel.self, method: "item(at: Int) -> SearchGameTableItem?", parameterMatchers: matchers))
	    }
	    
	    func uriForGame<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.ClassStubFunction<(Int), GameUri?> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSearchGameViewModel.self, method: "uriForGame(at: Int) -> GameUri?", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_SearchGameViewModel: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var searchQuery: Cuckoo.VerifyProperty<PublishRelay<String>> {
	        return .init(manager: cuckoo_manager, name: "searchQuery", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var searchResults: Cuckoo.VerifyReadOnlyProperty<Driver<[SearchGameTableSection]>> {
	        return .init(manager: cuckoo_manager, name: "searchResults", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var isSearching: Cuckoo.VerifyReadOnlyProperty<Driver<Bool>> {
	        return .init(manager: cuckoo_manager, name: "isSearching", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var numberOfSections: Cuckoo.VerifyReadOnlyProperty<Int> {
	        return .init(manager: cuckoo_manager, name: "numberOfSections", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var numberOfSearchResults: Cuckoo.VerifyReadOnlyProperty<Int> {
	        return .init(manager: cuckoo_manager, name: "numberOfSearchResults", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func item<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.__DoNotUse<(Int), SearchGameTableItem?> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("item(at: Int) -> SearchGameTableItem?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func uriForGame<M1: Cuckoo.Matchable>(at index: M1) -> Cuckoo.__DoNotUse<(Int), GameUri?> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("uriForGame(at: Int) -> GameUri?", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

public class SearchGameViewModelStub: SearchGameViewModel {
    
    
    public override var searchQuery: PublishRelay<String> {
        get {
            return DefaultValueRegistry.defaultValue(for: (PublishRelay<String>).self)
        }
        
        set { }
        
    }
    
    
    public override var searchResults: Driver<[SearchGameTableSection]> {
        get {
            return DefaultValueRegistry.defaultValue(for: (Driver<[SearchGameTableSection]>).self)
        }
        
    }
    
    
    public override var isSearching: Driver<Bool> {
        get {
            return DefaultValueRegistry.defaultValue(for: (Driver<Bool>).self)
        }
        
    }
    
    
    public override var numberOfSections: Int {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int).self)
        }
        
    }
    
    
    public override var numberOfSearchResults: Int {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int).self)
        }
        
    }
    

    

    
    public override func item(at index: Int) -> SearchGameTableItem?  {
        return DefaultValueRegistry.defaultValue(for: (SearchGameTableItem?).self)
    }
    
    public override func uriForGame(at index: Int) -> GameUri?  {
        return DefaultValueRegistry.defaultValue(for: (GameUri?).self)
    }
    
}

