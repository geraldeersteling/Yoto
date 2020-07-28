//
//  GameListModels.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

enum GameList {
    // MARK: Use cases

    enum GetList {
        struct Request {

        }

        struct Response {
            var games: [Game]
        }

        struct ViewModel {
            struct DisplayedGame {
                var name: String
            }
            var displayedGames: [DisplayedGame]
        }
    }
}
