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
    static func registerGameListGraph(in container: Resolver) {
        registerGameListScene(in: container)
    }

    static func registerGameListScene(in container: Resolver) {
        container.register { GameListViewModel() }
    }
}
