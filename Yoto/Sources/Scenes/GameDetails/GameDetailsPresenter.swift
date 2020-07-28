//
//  GameDetailsPresenter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

protocol GameDetailsPresentationLogic {
    func presentGame(response: GameDetails.GetGame.Response)
}

class GameDetailsPresenter: GameDetailsPresentationLogic {
    weak var viewController: GameDetailsDisplayLogic?

    func presentGame(response: GameDetails.GetGame.Response) {
        let display = GameDetails.GetGame.ViewModel.DisplayedGame(name: response.game.name)
        let model = GameDetails.GetGame.ViewModel(displayedGame: display)
        viewController?.displayGame(viewModel: model)
    }
}
