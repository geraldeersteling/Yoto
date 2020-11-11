//
//  KeychainSeeds.swift
//  YotoTests
//
//  Created by Gerald Eersteling on 27/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Security
@testable import YotoUIKit

struct KeychainSeeds {
    struct Atrributes: KeychainAttributes {
        let item: String
        let secClass: CFString
        let service: String

        var query: [String: Any] {
            return [String(kSecClass): secClass,
                    String(kSecAttrService): service]
        }
    }

    static let service = "service"

    static let seeds = [
        Atrributes(item: "seed 1",
                   secClass: kSecClassGenericPassword,
                   service: service),
        Atrributes(item: "seed 2",
                   secClass: kSecClassGenericPassword,
                   service: service)
    ]
    static let firstSeed = seeds[0]

    static func resetAllSeeds() {
        let resetSeed: (Atrributes) -> OSStatus = { seed in
            let query = [
                String(kSecClass): seed.secClass,
                String(kSecAttrService): seed.service
            ] as CFDictionary

            return SecItemDelete(query)
        }

        for seed in seeds {
            let status = resetSeed(seed)
            switch status {
                case errSecSuccess, errSecItemNotFound:
                    print("Removed keychain item:", seed.item)
                default:
                    print("An error \(status) occured while trying to remove keychain item:", seed.item)
            }
        }
    }
}
