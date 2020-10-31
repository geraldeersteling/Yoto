// MARK: - Mocks generated from file: YotoUIKit/Sources/Keychain Handling/KeychainAttributes.swift at 2020-10-31 14:33:59 +0000

//
//  KeychainAttributes.swift
//  Yoto
//
//  Created by Gerald Eersteling on 21/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cuckoo
@testable import YotoUIKit

import Foundation


public class MockKeychainAttributes: KeychainAttributes, Cuckoo.ProtocolMock {
    
    public typealias MocksType = KeychainAttributes
    
    public typealias Stubbing = __StubbingProxy_KeychainAttributes
    public typealias Verification = __VerificationProxy_KeychainAttributes

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: KeychainAttributes?

    public func enableDefaultImplementation(_ stub: KeychainAttributes) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    public var query: [String: Any] {
        get {
            return cuckoo_manager.getter("query",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.query)
        }
        
    }
    

    

    

	public struct __StubbingProxy_KeychainAttributes: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var query: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockKeychainAttributes, [String: Any]> {
	        return .init(manager: cuckoo_manager, name: "query")
	    }
	    
	    
	}

	public struct __VerificationProxy_KeychainAttributes: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var query: Cuckoo.VerifyReadOnlyProperty<[String: Any]> {
	        return .init(manager: cuckoo_manager, name: "query", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

public class KeychainAttributesStub: KeychainAttributes {
    
    
    public var query: [String: Any] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([String: Any]).self)
        }
        
    }
    

    

    
}

