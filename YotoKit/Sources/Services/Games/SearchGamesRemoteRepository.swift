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
import Resolver

public class SearchGamesRemoteRepository: SearchGamesRepository {
    @Injected private var api: IGDB
    private let disposeBag = DisposeBag()
    private var provider = MoyaProvider<GamesTarget>()

    public init() {
        provider = MoyaProvider<GamesTarget>(plugins: [
            AccessTokenPlugin(tokenClosure: { _ in
                self.api.accessToken
            })
        ])
    }

    public func searchGames(_ query: String) -> Single<[Game]> {
        provider.rx
            .request(.searchForGame(query: query))
            .filterSuccessfulStatusCodes()
            .mapArray(Game.self)
    }

    public func fetchGameDetails(uri: GameUri) -> Single<Game> {
        provider.rx
            .request(.detailsForGame(uri: uri))
            .filterSuccessfulStatusCodes()
            .mapArray(Game.self)
            .map { $0[0] }
    }
}
