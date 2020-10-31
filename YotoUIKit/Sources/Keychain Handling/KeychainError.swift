//
//  KeychainError.swift
//  Yoto
//
//  Created by Gerald Eersteling on 21/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation

enum KeychainError: LocalizedError {
    case copyMatchIsNoDictionary(match: AnyObject?)
    case unknown(description: String?)

    var errorDescription: String? {
        switch self {
            case let .copyMatchIsNoDictionary(match):
                // TODO: l10n
                return """
                    The retrieved keychain match is no dictionary. MATCHED:
                    \(String(describing: match))
                    """
            case let .unknown(description):
                // TODO: l10n
                return description ?? "An unknown error occurred while handling the keychain"
        }
    }
}
