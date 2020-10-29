//
//  Repositories+Injection.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Resolver

extension Resolver {
    struct RepositoryNames {
        enum Games: String {
            case remote = "GamesRepository::Remote"
        }
    }

    static func registerRepositoriesGraph() {
        register(name: RepositoryNames.Games.remote.rawValue) { GamesRemoteRepository() as GamesRepository }
    }
}
