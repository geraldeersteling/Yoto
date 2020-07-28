//
//  GameDetailsInteractor.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

protocol GameDetailsBusinessLogic {
    func getGame(request: GameDetails.GetGame.Request)
}

protocol GameDetailsDataStore {
    var game: Game! { get set }
}

class GameDetailsInteractor: GameDetailsBusinessLogic, GameDetailsDataStore {
    var presenter: GameDetailsPresentationLogic?
    var worker: GameDetailsWorker?
    var game: Game!

    func getGame(request: GameDetails.GetGame.Request) {
        let response = GameDetails.GetGame.Response(game: game)
        presenter?.presentGame(response: response)
    }
}
