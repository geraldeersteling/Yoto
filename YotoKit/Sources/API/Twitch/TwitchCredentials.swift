//
//  TwitchCredentials.swift
//  Yoto
//
//  Created by Gerald Eersteling on 21/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import ObjectMapper

class TwitchCredentials: Mappable {
    var access_token : String?
    var expires_in : Int?
    var token_type : String?

    required init?(map: Map) {}

    func mapping(map: Map) {
        access_token <- map["access_token"]
        expires_in <- map["expires_in"]
        token_type <- map["token_type"]
    }
}
