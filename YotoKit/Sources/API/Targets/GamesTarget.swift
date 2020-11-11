//
//  GamesTarget.swift
//  Yoto
//
//  Created by Gerald Eersteling on 04/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Moya

enum GamesTarget {
    case searchForGame(query: String)
    case detailsForGame(uri: GameUri)
}

extension GamesTarget: TargetType {


    var baseURL: URL {
        IGDB.baseURL
    }

    var path: String {
        switch self {
            case .searchForGame, .detailsForGame:
                return "games"
        }
    }

    var method: Moya.Method {
        .post
    }

    var sampleData: Data {
        """
        [
          {
            "id": 129018,
            "category": 0,
            "created_at": 1580083200,
            "external_games": [1846825],
            "first_release_date": 1578009600,
            "game_modes": [1],
            "genres": [32],
            "name": "Halo Beats!",
            "platforms": [6],
            "popularity": 1.0,
            "release_dates": [202253],
            "screenshots": [358431, 358435],
            "similar_games": [8367, 74127, 81275],
            "slug": "halo-beats",
            "status": 4,
            "summary": "＊これは、天使の輪っかの形をテーマにした音ゲーです ノーツが赤い判定線に重なったら...",
            "updated_at": 1593475200,
            "url": "https://www.igdb.com/games/halo-beats",
            "websites": [132752],
            "checksum": "fc4aa56b-ce90-1fc7-79be-0e521dc91961"
          }
        ]
        """.data(using: .utf8)!
    }

    var task: Task {
        switch self {
            case .searchForGame(let query):
                return .requestData("search \"\(query)\"; fields *; exclude tags;".data(using: .utf8)!)
            case .detailsForGame(let uri):
                return .requestData("fields *; where id = \(uri.id); exclude tags;".data(using: .utf8)!)
        }
    }

    var headers: [String: String]? {
        return Twitch.clientIDHeader
    }
}

extension GamesTarget: AccessTokenAuthorizable {
    var authorizationType: AuthorizationType? {
        .bearer
    }
}
