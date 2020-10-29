//
//  SearchGameDetailsModels.swift
//  Yoto
//
//  Created by Gerald Eersteling on 03/08/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

enum SearchGameDetails {
    // MARK: Use cases

    enum FetchGameForResult {
        struct Request {
            var result: Game
        }

        struct Response {
            var game: Game
        }

        struct ViewModel {
            var game: Game
        }
    }
}
