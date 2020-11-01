//
//  GameSeeds.swift
//  YotoTests
//
//  Created by Gerald Eersteling on 26/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
@testable import YotoKit

public struct GameSeeds {
    public static let seeds = [
        try! Game(JSON: ["id": 1, "name": "The Game"]),
        try! Game(JSON: ["id": 2, "name": "The Real Game"]),
        try! Game(JSON: ["id": 3, "name": "The Fake Game"])
    ]

    public static var firstSeed: Game {
        return seeds[0]
    }
}
