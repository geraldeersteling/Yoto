//
//  KeychainAttributes.swift
//  Yoto
//
//  Created by Gerald Eersteling on 21/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation

public protocol KeychainAttributes {
    var query: [String: Any] { get }
}

extension KeychainAttributes {
    var cfQuery: CFDictionary {
        return query as CFDictionary
    }
}
