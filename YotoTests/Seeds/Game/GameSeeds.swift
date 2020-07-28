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
        Game(name: "Mocked game 1"),
        Game(name: "Mocked game 2"),
        Game(name: "Mocked game 3"),
        Game(name: "Mocked game 4"),
        Game(name: "Mocked game 5")
    ]

    static var seed: Game {
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

        // MARK: - SearchGame -

        static var searchGameSearchForGame: SearchGame.SearchForGame.ViewModel {
            let game = SearchGame.SearchForGame.ViewModel.DisplayedGame(name: seeds.randomElement()!.name)
            return SearchGame.SearchForGame.ViewModel(results: [game])
        }
    }
}
