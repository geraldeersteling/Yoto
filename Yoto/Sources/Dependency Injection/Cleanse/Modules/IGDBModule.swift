//
//  IGDBModule.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Cleanse

struct IGDBModule: Module {
    static func configure(binder: Binder<Unscoped>) {
        binder
            .bind(URL.self)
            .tagged(with: IGDBURL.self)
            .to(value: URL(string: "https://api-v3.igdb.com")!)
        binder
            .bind(String.self)
            .tagged(with: IGDBUserkey.self)
            .to(value: "82406877b74d20540354fcc95a105ee4")
    }
}

struct IGDBURL: Tag {
    typealias Element = URL
}

struct IGDBUserkey: Tag {
    typealias Element = String
}
