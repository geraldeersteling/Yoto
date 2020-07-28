//
//  GameListWorker.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import UIKit

protocol GameListRepository {
    func getGames(completion: ([Game]) -> Void)
}

class GameListWorker {
    var repository: GameListRepository

    init(withRepository repo: GameListRepository) {
        repository = repo
    }

    func getGames(completion: ([Game]) -> Void) {
        repository.getGames(completion: completion)
    }
}
