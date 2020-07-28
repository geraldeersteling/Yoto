//
//  SearchGameModels.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

enum SearchGame {
    // MARK: Use cases

    enum SearchForGame {
        struct Request {
            var query: String
        }
        struct Response {
            var results: [Game]
        }
        struct ViewModel {
            struct DisplayedGame {
                let name: String
            }
            var results: [DisplayedGame]
        }
    }

    enum Something {
        struct Request
        {}

        struct Response
        {}

        struct ViewModel
        {}
    }
}
