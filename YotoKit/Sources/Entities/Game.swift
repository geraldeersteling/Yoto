//
//  Game.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import ObjectMapper

public struct GameUri: Equatable, Hashable {
    public var id: Int
}

public class Game: ImmutableMappable {
    public var uri: GameUri
    public var name: String

    required public init(map: Map) throws {
        self.uri = GameUri(id: try map.value("id"))
        name = try map.value("name")
    }

    public func mapping(map: Map) {
        uri.id <- map["id"]
        name <- map["name"]
    }
}

extension Game: Equatable {
    static public func == (lhs: Game, rhs: Game) -> Bool {
        lhs.uri.id == rhs.uri.id
    }
}
