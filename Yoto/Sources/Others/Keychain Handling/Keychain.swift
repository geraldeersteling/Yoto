//
//  Keychain.swift
//  Yoto
//
//  Created by Gerald Eersteling on 21/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Security

struct Keychain {
    static func store(_ item: Data, withAttributes attributes: KeychainAttributes) throws {
        var status = SecItemCopyMatching(attributes.cfQuery, nil)

        switch status {
            case errSecItemNotFound:
                var query = attributes.query
                query[String(kSecValueData)] = item
                status = SecItemAdd(query as CFDictionary, nil)
                if status != errSecSuccess {
                    throw error(withStatus: status)
                }

            case errSecSuccess:
                status = SecItemUpdate(attributes.cfQuery, [String(kSecValueData): item] as CFDictionary)
                if status != errSecSuccess {
                    throw error(withStatus: status)
                }

            default:
                throw error(withStatus: status)
        }
    }

    static func retrieveItem(forAttributes attributes: KeychainAttributes) throws -> Data? {
        var query = attributes.query
        query[String(kSecReturnAttributes)] = kCFBooleanTrue
        query[String(kSecReturnData)] = kCFBooleanTrue
        query[String(kSecMatchLimit)] = kSecMatchLimitOne
        var match: AnyObject?

        let status = withUnsafeMutablePointer(to: &match) {
            SecItemCopyMatching(query as CFDictionary, $0)
        }
        switch status {
            case errSecSuccess:
                guard let result = match as? [String: Any]
                else { throw KeychainError.copyMatchIsNoDictionary(match: match) }

                return result[String(kSecValueData)] as? Data
            case errSecItemNotFound:
                return nil
            default:
                throw error(withStatus: status)
        }
    }

    static func deleteItem(withAttributes attributes: KeychainAttributes) throws {
        let status = SecItemDelete(attributes.cfQuery)

        guard status == errSecSuccess || status == errSecItemNotFound
        else { throw error(withStatus: status) }
    }

    private static func error(withStatus status: OSStatus) -> KeychainError {
        return KeychainError.unknown(description: SecCopyErrorMessageString(status, nil) as String?)
    }
}
