//
//  SearchGameTarget.swift
//  Yoto
//
//  Created by Gerald Eersteling on 03/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Moya

enum SearchGameTarget {
    case search(query: String)
}

extension SearchGameTarget: TargetType, AccessTokenAuthorizable {
    var baseURL: URL {
        IGDB.baseURL
    }

    var authorizationType: AuthorizationType? {
        return .bearer
    }

    var path: String {
        switch self {
            case .search:
                return "search"
        }
    }

    var method: Moya.Method {
        return .post
    }

    var sampleData: Data {
        """
        [
            {
                "id": 9286221,
                "alternative_name": "Halo SPV3",
                "game": 125649,
                "name": "SPV3",
                "published_at": 1562371200
            }
        ]
        """.data(using: .utf8)!
    }

    var task: Task {
        switch self {
            case .search(let query):
                return .requestData("search \"\(query)\"; fields *;".data(using: .utf8)!)
        }
    }

    var headers: [String: String]? {
        return nil
    }
}
