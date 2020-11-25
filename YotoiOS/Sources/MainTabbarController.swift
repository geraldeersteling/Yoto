//
//  MainTabbarController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver
import UIKit

public class MainTabbarController: UITabBarController {
    @Injected var gameListViewController: GameListViewController
    @Injected var searchGameViewController: SearchGameViewController

    override public func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [
            UINavigationController(rootViewController: gameListViewController),
            UINavigationController(rootViewController: searchGameViewController)
        ]
    }
}
