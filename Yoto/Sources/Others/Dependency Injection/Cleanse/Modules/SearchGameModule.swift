//
//  SearchGameModule.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cleanse
import Foundation

struct SearchGameModule: Module {
    static func configure(binder: Binder<Unscoped>) {
        binder.include(module: SearchGameViewController.Module.self)
        binder.include(module: SearchGameInteractor.Module.self)
        binder.include(module: SearchGamePresenter.Module.self)
        binder.include(module: SearchGameRouter.Module.self)
    }
}

extension SearchGameViewController {
    struct Module: Cleanse.Module {
        static func configure(binder: Binder<Unscoped>) {
            binder
                .bind(SearchGameBusinessLogic.self)
                .to(factory: SearchGameInteractor.init)
            binder.bind(SearchGameRouterable.self)
                .to(factory: SearchGameRouter.init)
            binder.bind(SearchGamePresentationLogic.self)
                .to(factory: SearchGamePresenter.init)

            binder.bind().intoCollection()
                .to { (interactor: SearchGameBusinessLogic, presenter: SearchGamePresentationLogic, router: SearchGameRouterable) -> UIViewController in
                    let searchGameVC = SearchGameViewController(presenter: presenter,
                                                                interactor: interactor,
                                                                router: router)
                    return UINavigationController(rootViewController: searchGameVC)
                }
        }
    }
}

extension SearchGameInteractor {
    struct Module: Cleanse.Module {
        static func configure(binder: Binder<Unscoped>) {
            binder
                .bind(GamesRepository.self)
                .to(value: GamesRemoteRepository())
        }
    }
}

extension SearchGamePresenter {
    struct Module: Cleanse.Module {
        static func configure(binder: Binder<Unscoped>) {
//            binder
//                .bind(SearchGameDisplayLogic.self)
//                .to(factory: SearchGameViewController.init)
        }
    }
}

extension SearchGameRouter {
    struct Module: Cleanse.Module {
        static func configure(binder: Binder<Unscoped>) {
//            binder.bind().to(factory: SearchGameViewController.init)
            binder.bind(SearchGameDataStore.self)
                .to(factory: SearchGameInteractor.init)
            binder.bind().to(factory: SearchGameDetailsViewController.init)
        }
    }
}
