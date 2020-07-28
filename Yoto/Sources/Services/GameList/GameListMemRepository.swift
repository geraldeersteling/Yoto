//
//  GameListMemRepository.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation

class GameListMemRepository: GameListRepository {
    // MARK: - Stub data -
    let games = [
        Game(name: "Game 1"),
        Game(name: "Game 2"),
        Game(name: "Game 3"),
        Game(name: "Game 4"),
        Game(name: "Game 5")
    ]

    func getGames(completion: ([Game]) -> Void) {
        completion(games)
    }

}
