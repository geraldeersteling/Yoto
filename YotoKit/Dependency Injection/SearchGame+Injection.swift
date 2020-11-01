//
//  SearchGame+Injection.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Resolver

extension Resolver {
    static func registerSearchGameGraph(in container: Resolver) {
        registerSearchGameScene(in: container)
    }

    static func registerSearchGameScene(in container: Resolver) {
        register { (_, arg) -> SearchGameViewModel in
            let repositoryType = (arg as? String) ?? RepositoryNames.SearchGames.remote.rawValue
            return SearchGameViewModel(repository: resolve(name: repositoryType))
        }
    }
}
