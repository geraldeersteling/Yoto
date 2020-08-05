//
//  IGDB.swift
//  Yoto
//
//  Created by Gerald Eersteling on 03/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation

struct IGDB {
    static let authHeader = ["user-key": "82406877b74d20540354fcc95a105ee4"]
    static let baseURL = URL(string: "https://api-v3.igdb.com")!

    static func addAuthHeader(to headers: inout [String: String]?) {
        headers?.merge(authHeader, uniquingKeysWith: { (_, new) in new })
    }
}
