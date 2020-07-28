//
//  SearchGameMemStore.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation

class SearchGameMemRepository: SearchGameRepository {

    // MARK: - Stub data -
    let games = [
        Game(name: "Game 1"),
        Game(name: "Game 2"),
        Game(name: "Game 3"),
        Game(name: "Game 4"),
        Game(name: "Game 5")
    ]

    func searchGame(_ query: String,
                    completion: ([Game]) -> Void) {
        completion(games.filter {
            $0.name.lowercased().contains(query)
        })
    }
}
