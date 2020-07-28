//
//  GameDetailsModels.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

enum GameDetails {
    // MARK: Use cases

    enum GetGame {
        struct Request {}

        struct Response {
            let game: Game
        }

        struct ViewModel {
            struct DisplayedGame {
                let name: String
            }
            let displayedGame: DisplayedGame
        }
    }
}
