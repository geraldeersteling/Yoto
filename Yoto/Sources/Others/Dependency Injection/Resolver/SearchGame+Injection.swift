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
        register {
            SearchGameViewController(interactor: resolve(), router: resolve())
        }
        .resolveProperties { (_, siq) in
            siq.router.viewController = siq
            siq.interactor.presenter.viewController = siq
        }
        .implements(SearchGameDisplayLogic.self)


        register {
            SearchGameInteractor(presenter: resolve(),
                                 repository: resolve(name: RepositoryNames.Games.remote.rawValue))
        }
        .implements(SearchGameBusinessLogic.self)
        .implements(SearchGameDataStore.self)

        register { SearchGamePresenter() as SearchGamePresentationLogic }
        register { SearchGameRouter(dataStore: resolve(),
                                    searchGameDetails: resolve()) as SearchGameRouterable }
    }

    fileprivate static func registerSearchGameDetailsScene() {
        register { SearchGameDetailsViewController(nibName: nil, bundle: nil) }
            .implements(SearchGameDetailsDisplayLogic.self)
    }
}
