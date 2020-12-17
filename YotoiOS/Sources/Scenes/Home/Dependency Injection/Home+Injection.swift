//
//  Home+Injection.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 08/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver

extension Resolver {

    static func registerHomeGraph() {
        register { HomeTabbarController(nibName: nil, bundle: nil) }
    }

}
