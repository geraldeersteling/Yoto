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
    static func registerSearchGameGraph() {
        registerSearchGameScene()
        registerSearchGameDetailsScene()
    }

    fileprivate static func registerSearchGameScene() {
        register { SearchGameViewController(nibName: nil, bundle: nil) }
        register { (_, arg) -> SearchGameViewModel in
            let repositoryType = (arg as? String) ?? RepositoryNames.Games.remote.rawValue
            return SearchGameViewModel(repository: resolve(name: repositoryType))
        }
        register { SearchGameRouter() as SearchGameRoutingLogic }
    }

    fileprivate static func registerSearchGameDetailsScene() {
        register { (_, arg) -> SearchGameDetailsViewController in
            let gameUri = arg as? GameUri
            return SearchGameDetailsViewController(nibName: nil, bundle: nil)
        }
        .implements(SearchGameDetailsDisplayLogic.self)
    }
}
