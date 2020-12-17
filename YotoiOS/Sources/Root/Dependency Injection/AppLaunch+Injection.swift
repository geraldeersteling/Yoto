//
//  AppLaunch+Injection.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 07/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver

extension Resolver {
    static func registerAppLaunchGraph() {
        register { (_, args) in
            /// TODO: Although type inference helps us here, this forced downcast is ugly and we should look if
            ///       it can be improved.
            AppCoordinator(window: args as! UIWindow,
                           flowViewController: resolve(LaunchViewController.self))
        }.scope(application)

        register { LaunchViewController(nibName: nil, bundle: nil) }
    }
}
