//
//  HomeModule.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Cleanse

struct HomeModule: Module {
    static func configure(binder: Binder<Unscoped>) {
        binder.include(module: MainTabbarController.Module.self)
    }
}

extension MainTabbarController {
    struct Module: Cleanse.Module {
        static func configure(binder: Binder<Unscoped>) {

            binder.bind(MainTabbarController.self)
                .to { (viewControllers: [UIViewController]) -> MainTabbarController in
                    let mainVC = MainTabbarController(nibName: nil, bundle: nil)
                    mainVC.viewControllers = viewControllers
                    return mainVC
            }

            binder.bind()
                .tagged(with: UIViewController.Root.self)
                .to { $0 as MainTabbarController }
        }
    }
}
