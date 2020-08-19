//
//  GameSeeds.swift
//  YotoTests
//
//  Created by Gerald Eersteling on 26/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
@testable import Yoto

struct GameSeeds {
    static let seeds = [
        try! Game(JSON: ["id": 1, "name": "The Game"]),
        try! Game(JSON: ["id": 2, "name": "The Real Game"]),
        try! Game(JSON: ["id": 3, "name": "The Fake Game"])
    ]

    static var firstSeed: Game {
        return seeds[0]
    }

    struct ViewModels {
        // MARK: - GameList -

        static var gameListGetList: GameList.GetList.ViewModel {
            let displayedGame = GameList.GetList.ViewModel.DisplayedGame(name: seeds.randomElement()!.name)
            return GameList.GetList.ViewModel(displayedGames: [displayedGame])
        }

        // MARK: - GameDetails -

        static var gameDetailsGetGame: GameDetails.GetGame.ViewModel {
            let displayedGame = GameDetails.GetGame.ViewModel.DisplayedGame(name: seeds.randomElement()!.name)
            return GameDetails.GetGame.ViewModel(displayedGame: displayedGame)
        }
    }
}
