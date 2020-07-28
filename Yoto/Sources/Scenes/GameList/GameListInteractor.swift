//
//  GameListInteractor.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

protocol GameListBusinessLogic {
    func getList(request: GameList.GetList.Request)
}

protocol GameListDataStore {
    var games: [Game] { get set }
}

class GameListInteractor: GameListBusinessLogic, GameListDataStore {
    var presenter: GameListPresentationLogic?
    var worker = GameListWorker(withRepository: GameListMemRepository())
    var games = [Game]()

    func getList(request: GameList.GetList.Request) {
        worker.getGames {
            games = $0
            let response = GameList.GetList.Response(games: $0)
            self.presenter?.presentGameList(response: response)
        }
    }
}
