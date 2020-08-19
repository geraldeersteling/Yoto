//
//  GamesRemoteRepository.swift
//  Yoto
//
//  Created by Gerald Eersteling on 04/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Moya
import Moya_ObjectMapper
import RxSwift

class GamesRemoteRepository: GamesRepository {
    let disposeBag = DisposeBag()

    let provider = MoyaProvider<GamesTarget>()

    func searchGames(_ query: String) -> Single<[Game]> {
        provider.rx
            .request(.searchForGame(query: query))
            .filterSuccessfulStatusCodes()
            .mapArray(Game.self)
    }

    func fetchGameDetails(gameID: Int) -> Single<Game> {
        provider.rx
            .request(.detailsForGame(id: gameID))
            .filterSuccessfulStatusCodes()
            .mapArray(Game.self)
            .map { $0[0] }
    }
}
