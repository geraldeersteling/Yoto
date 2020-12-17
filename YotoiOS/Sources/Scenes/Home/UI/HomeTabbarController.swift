//
//  HomeTabbarController.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 08/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit
import Resolver

class HomeTabbarController: UITabBarController {
    @Injected private var gameListViewController: GameListViewController
    @Injected private var searchGameViewController: SearchGameViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [
            UINavigationController(rootViewController: gameListViewController),
            UINavigationController(rootViewController: searchGameViewController)
        ]
    }
}
