//
//  Game.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import ObjectMapper

class Game: ImmutableMappable {
    var id: Int
    var name: String

    required init(map: Map) throws {
        id = try map.value("id")
        name = try map.value("name")
    }

    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
    }
}

extension Game: Equatable {
    static func == (lhs: Game, rhs: Game) -> Bool {
        lhs.id == rhs.id
    }
}
