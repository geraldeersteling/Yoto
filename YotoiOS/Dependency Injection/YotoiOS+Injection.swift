//
//  YotoiOS+Injection.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 31/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Resolver

public extension Resolver {
    static func registerYotoiOSGraph() {
        registerAppLaunchGraph()
        registerStartupGraph()
        registerHomeGraph()
        registerGameListGraph()
        registerSearchGameGraph()
    }
}
