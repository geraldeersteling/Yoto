//
//  GameViewModel.swift
//  Yoto
//
//  Created by Gerald Eersteling on 12/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation

struct GameViewModel {
    var name: String

    init(game: Game) {
        name = game.name
    }

}
