//
//  GamesRepository.swift
//  YotoKit
//
//  Created by Gerald Eersteling on 31/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation

public protocol GamesRepository {
    func allGames() -> [Game]
}
