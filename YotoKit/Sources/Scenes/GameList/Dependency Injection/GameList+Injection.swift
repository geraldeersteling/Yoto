//
//  GameList+Injection.swift
//  Yoto
//
//  Created by Gerald Eersteling on 31/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Resolver

extension Resolver {
    static func registerGameListGraph() {
        registerGameListScene()
    }

    static func registerGameListScene() {
        register { GameListViewModel() }
    }
}
