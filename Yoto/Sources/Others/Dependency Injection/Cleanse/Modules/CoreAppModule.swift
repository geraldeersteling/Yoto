//
//  CoreAppModule.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cleanse
import Foundation

struct CoreAppModule: Module {
    static func configure(binder: Binder<Unscoped>) {
        binder.include(module: HomeModule.self)
        binder.include(module: SearchGameModule.self)
    }
}
