//
//  SearchGameRouter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Resolver
import UIKit

protocol SearchGameRoutingLogic {
    func routeToGameSearchDetails(_ uri: GameUri, from viewController: UIViewController?)
}

class SearchGameRouter: SearchGameRoutingLogic {
    // MARK: Routing

    func routeToGameSearchDetails(_ uri: GameUri, from viewController: UIViewController?) {
        let destinationVC = Resolver.resolve(SearchGameDetailsViewController.self, args: uri)
        viewController?.show(destinationVC, sender: nil)
    }
}
