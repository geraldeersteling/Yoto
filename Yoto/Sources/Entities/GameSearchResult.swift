//
//  GameSearchResult.swift
//  Yoto
//
//  Created by Gerald Eersteling on 03/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import ObjectMapper

class GameSearchResult: ImmutableMappable {
    var id: Int
    var name: String
    var alternativeName: String
    var publishedAt: Date?

    required init(map: Map) throws {
        id = try map.value("game")
        name = try map.value("name")
        alternativeName = try map.value("alternative_name")
        publishedAt = try? map.value("published_at", using: DateTransform())
    }

    func mapping(map: Map) {
        id <- map["game"]
        name <- map["name"]
        alternativeName <- map["alternative_name"]
        publishedAt <- (map["published_at"], DateTransform())
    }
}

extension GameSearchResult: Equatable {
    static func == (lhs: GameSearchResult, rhs: GameSearchResult) -> Bool {
        lhs.id == rhs.id
    }
}
