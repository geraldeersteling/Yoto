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
        try! Game(JSON: ["id": 1, "name": "The Game"])
    ]

    func getGames(completion: ([Game]) -> Void) {
        completion(games)
    }

}
