//
//  GenericError.swift
//  YotoUIKit
//
//  Created by Gerald Eersteling on 25/11/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation

public enum GenericError: LocalizedError {
    case generic
    case unknown
}

public extension GenericError {
    var errorDescription: String? {
        switch self {
            case .generic:
                return "Something went wrong, please try again later." // TODO: L10n
            case .unknown:
                return "An unknown error occurred." // TODO: L10n
        }
    }
}
