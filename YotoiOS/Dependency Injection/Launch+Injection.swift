//
//  Launch+Injection.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 25/11/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver

extension Resolver {
    static func registerLaunchGraph() {
        register { MainTabbarController(nibName: nil, bundle: nil) }
    }
}
