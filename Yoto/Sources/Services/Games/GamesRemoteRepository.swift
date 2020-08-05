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

    func searchGames(_ query: String, completion: @escaping ([Game]) -> Void) {
        let provider = MoyaProvider<GamesTarget>()
        provider.rx
            .request(.searchForGame(query: query))
            .mapArray(Game.self)
            .subscribe(
                onSuccess: { completion($0) },
                onError: { print("//TODO: UNHANDLED ERROR: \($0)") })
            .disposed(by: disposeBag)
    }

    func fetchGameDetails(gameID: Int, completion: @escaping (Game) -> Void) {
        let provider = MoyaProvider<GamesTarget>()
        provider.rx
            .request(.detailsForGame(id: gameID))
            .mapArray(Game.self)
            .subscribe(
                // TODO: Handle the possibility of the array being empty (instead of using the index)
                onSuccess: { completion($0[0]) },
                onError: { print("//TODO: UNHANDLED ERROR: \($0)") })
            .disposed(by: disposeBag)
    }
}
