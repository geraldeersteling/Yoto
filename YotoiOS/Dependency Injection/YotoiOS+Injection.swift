//
//  YotoiOS+Injection.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 31/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Resolver

extension Resolver {
    public static func registerYotoiOSGraph(in container: Resolver = Resolver.main) {
        registerGameListGraph(in: container)
        registerSearchGameGraph(in: container)
    }
}
