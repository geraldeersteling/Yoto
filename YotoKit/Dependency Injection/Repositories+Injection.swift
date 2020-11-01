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
    public struct RepositoryNames {
        public enum SearchGames: String {
            case remote = "SearchGamesRepository::Remote"
        }

        public enum Games: String {
            case inMemory = "GamesRepository::InMemory"
        }
    }

    static func registerRepositoriesGraph(in container: Resolver) {
        registerGamesRepositories(in: container)
        registerSearchGamesRepositories(in: container)
    }

    static func registerGamesRepositories(in container: Resolver) {
        container.register(name: RepositoryNames.Games.inMemory.rawValue) {
            GamesInMemoryRepository() as GamesRepository
        }
    }

    static func registerSearchGamesRepositories(in container: Resolver) {
        container.register(name: RepositoryNames.SearchGames.remote.rawValue) {
            SearchGamesRemoteRepository() as SearchGamesRepository
        }
    }
}
