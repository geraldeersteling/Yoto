//
//  GamesRepository.swift
//  Yoto
//
//  Created by Gerald Eersteling on 04/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation

protocol GamesRepository {
    func searchGames(_ query: String, completion: @escaping ([Game]) -> Void)
    func fetchGameDetails(gameID: Int, completion: @escaping (Game) -> Void)
}
