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

    static func registerRepositoriesGraph() {
        registerLaunchRepositories()
        registerOnboardingRepositories()
        registerGamesRepositories()
        registerSearchGamesRepositories()
    }

    static func registerLaunchRepositories() {
        register { LaunchRepository(userDefaults: .standard) }
    }

    static func registerOnboardingRepositories() {
        register { OnboardingRepository() }
    }

    static func registerGamesRepositories() {
        register(name: RepositoryNames.Games.inMemory.rawValue) {
            GamesInMemoryRepository() as GamesRepository
        }
        register { GamesInMemoryRepository() }
    }

    static func registerSearchGamesRepositories() {
        register(name: RepositoryNames.SearchGames.remote.rawValue) {
            SearchGamesRemoteRepository() as SearchGamesRepository
        }
        register { SearchGamesRemoteRepository() }
    }

}
