//
//  IGDBError.swift
//  Yoto
//
//  Created by Gerald Eersteling on 21/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation

enum IGDBError: LocalizedError {
    case noAccessTokenInResponse
    case unknown(description: String?)
}

extension IGDBError {
    var errorDescription: String? {
        switch self {
            case .noAccessTokenInResponse:
                // TODO: l10n
                return "No access token was found in the response from Twitch"
            case let .unknown(description):
                // TODO: l10n
                return description ?? "An unknown error occured while handling IGDB"
        }
    }
}
