//
//  MainTabbarController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit

class MainTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [
            UINavigationController(rootViewController: GameListViewController(nibName: nil, bundle: nil)),
            UINavigationController(rootViewController: SearchGameViewController(nibName: nil, bundle: nil))
        ]
    }

}
