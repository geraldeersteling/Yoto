//
//  GameListPresenter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

protocol GameListPresentationLogic {
    func presentGameList(response: GameList.GetList.Response)
}

class GameListPresenter: GameListPresentationLogic {
    weak var viewController: GameListDisplayLogic?

    func presentGameList(response: GameList.GetList.Response) {
        let displayedGames = response.games.map {
            GameList.GetList.ViewModel.DisplayedGame(name: $0.name)
        }
        let viewModel = GameList.GetList.ViewModel(displayedGames: displayedGames)
        viewController?.displayGameList(viewModel: viewModel)
    }

}
