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
    static func registerAPIgraph() {
        registerIGDB()
    }

    fileprivate static func registerIGDB() {
        register { IGDB() }
            .scope(application)
    }
}
