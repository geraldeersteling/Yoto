//
//  GamesRepository.swift
//  Yoto
//
//  Created by Gerald Eersteling on 04/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import RxSwift

protocol GamesRepository {
    func searchGames(_ query: String) -> Single<[Game]>
    func fetchGameDetails(gameID: Int) -> Single<Game>
}
