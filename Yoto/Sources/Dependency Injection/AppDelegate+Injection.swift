//
//  AppDelegate+Injection.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Resolver
import YotoKit

extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        registerYotoKitGraph()
        registerYotoiOSGraph()
    }

    static func registerCoreAppDependencies() {
        register { UserDefaults.standard }
    }
}
