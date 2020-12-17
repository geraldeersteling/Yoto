//
//  SearchGameRouter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Resolver
import UIKit
import YotoKit

public protocol SearchGameRoutingLogic {
    func routeToGameSearchDetails(_ uri: GameUri, from viewController: UIViewController?)
}

public class SearchGameRouter: SearchGameRoutingLogic {

    public init() {}

    // MARK: Routing

    public func routeToGameSearchDetails(_ uri: GameUri, from viewController: UIViewController?) {
//        let destinationVC = Resolver.resolve(SearchGameDetailsViewController.self, args: uri)
//        viewController?.show(destinationVC, sender: nil)
    }
}
