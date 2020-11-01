//
//  API+Injection.swift
//  Yoto
//
//  Created by Gerald Eersteling on 28/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Resolver

extension Resolver {
    static func registerAPIgraph(in container: Resolver) {
        registerIGDB(in: container)
    }

    static func registerIGDB(in container: Resolver) {
        container.register { IGDB() }
            .scope(application)
    }
}
