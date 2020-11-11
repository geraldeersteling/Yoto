//
//  TwitchTarget.swift
//  Yoto
//
//  Created by Gerald Eersteling on 21/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Moya

enum TwitchTarget {
    case retrieveAccessToken
}

extension TwitchTarget: TargetType {
    var baseURL: URL {
        Twitch.baseURL
    }

    var path: String {
        switch self {
            case .retrieveAccessToken:
                return "oauth2/token"
        }
    }

    var method: Moya.Method {
        return .post
    }

    var headers: [String: String]? {
        nil
    }

    var task: Task {
        switch self {
            case .retrieveAccessToken:
                return .requestParameters(parameters: ["client_id": Twitch.clientID,
                                                       "client_secret": Twitch.clientSecret,
                                                       "grant_type": "client_credentials"],
                                          encoding: URLEncoding.default)
        }
    }

    var sampleData: Data {
        """
        {
          "access_token": "prau3ol6mg5glgek8m89ec2s9q5i3i",
          "expires_in": 5587808,
          "token_type": "bearer"
        }
        """.data(using: .utf8)!
    }
}
