//
//  GamesRepository.swift
//  Yoto
//
//  Created by Gerald Eersteling on 04/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import RxSwift

public protocol SearchGamesRepository {
    func searchGames(_ query: String) -> Single<[Game]>
    func fetchGameDetails(uri: GameUri) -> Single<Game>
}
