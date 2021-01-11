//
//  GameSeeds.swift
//  YotoTests
//
//  Created by Gerald Eersteling on 26/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
@testable import YotoKit

public enum GameSeeds {
    public static let seeds = generateGames(5)

    public static var firstSeed: Game {
        return seeds[0]
    }

    public static func generateGames(_ count: Int) -> [Game] {
        var games = [Game]()
        for i in 0 ... count {
            games.append(
                try! Game(JSON: ["id": i, "name": "The Game \(i)"])
            )
        }
        return games
    }
}
