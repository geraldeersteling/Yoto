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
        registerSearchGameDetailsScene(in: container)
    }

    fileprivate static func registerSearchGameScene(in container: Resolver) {
        register { SearchGameViewController(nibName: "SearchGameViewController",
                                            bundle: Bundle(for: SearchGameViewController.self)) }
        register { SearchGameRouter() as SearchGameRoutingLogic }
    }

    fileprivate static func registerSearchGameDetailsScene(in container: Resolver) {
//        register { (_, arg) -> SearchGameDetailsViewController in
//            let gameUri = arg as? GameUri
//            return SearchGameDetailsViewController(nibName: nil, bundle: nil)
//        }
//        .implements(SearchGameDetailsDisplayLogic.self)
    }
}
