//
//  GamesInMemoryRepository.swift
//  YotoKit
//
//  Created by Gerald Eersteling on 31/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation

public class GamesInMemoryRepository: GamesRepository {
    // MARK: - Stub data -

    let games = [
        try! Game(JSON: ["id": 1, "name": "The Game"])
    ]

    public init() {}

    public func allGames() -> [Game] {
        return games
    }
}
