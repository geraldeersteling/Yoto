//
//  KeychainAttributes+IGDB.swift
//  Yoto
//
//  Created by Gerald Eersteling on 21/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation

struct IGDBKeychainAttributes {
    static let service = "eu.yoto.IGDB"

    struct OAuth: KeychainAttributes {

        var query: [String : Any] {
            return [
                String(kSecClass): kSecClassGenericPassword,
                String(kSecAttrService): service
            ]
        }
    }

}

