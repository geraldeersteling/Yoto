//
//  Game.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import ObjectMapper

struct GameUri: Equatable {
    var id: Int
}

class Game: ImmutableMappable {
    var uri: GameUri
    var name: String

    required init(map: Map) throws {
        self.uri = GameUri(id: try map.value("id"))
        name = try map.value("name")
    }

    func mapping(map: Map) {
        uri.id <- map["id"]
        name <- map["name"]
    }
}

extension Game: Equatable {
    static func == (lhs: Game, rhs: Game) -> Bool {
        lhs.uri.id == rhs.uri.id
    }
}
