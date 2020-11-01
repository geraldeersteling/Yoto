//
//  YotoKit+Injection.swift
//  YotoKit
//
//  Created by Gerald Eersteling on 31/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Resolver

extension Resolver {

    public static func registerYotoKitGraph(in container: Resolver = Resolver.main) {
        registerAPIgraph(in: container)
        registerRepositoriesGraph(in: container)
        registerSearchGameGraph(in: container)
        registerGameListGraph(in: container)
    }
}
