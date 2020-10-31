//
//  MainTabbarController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit
import Resolver

public class MainTabbarController: UITabBarController {

    override public func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [
            UINavigationController(rootViewController: Resolver.resolve(GameListViewController.self)),
            UINavigationController(rootViewController: Resolver.resolve(SearchGameViewController.self))
        ]
    }

}
