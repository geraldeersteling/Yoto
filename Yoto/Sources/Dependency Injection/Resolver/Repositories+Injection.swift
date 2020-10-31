//
//  Repositories+Injection.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Resolver
import YotoKit

extension Resolver {
    struct RepositoryNames {
        enum SearchGames: String {
            case remote = "SearchGamesRepository::Remote"
        }
        enum Games: String {
            case inMemory = "GamesRepository::InMemory"
        }
    }

    static func registerRepositoriesGraph() {
        registerGamesRepositories()
        registerSearchGamesRepositories()
    }

    static func registerGamesRepositories() {
        register(name: RepositoryNames.Games.inMemory.rawValue) { GamesInMemoryRepository() as GamesRepository }
    }

    static func registerSearchGamesRepositories() {
        register(name: RepositoryNames.SearchGames.remote.rawValue) { SearchGamesRemoteRepository() as SearchGamesRepository }
    }
}
