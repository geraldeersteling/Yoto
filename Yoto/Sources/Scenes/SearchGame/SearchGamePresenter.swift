//
//  SearchGamePresenter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

protocol SearchGamePresentationLogic {
    func presentSearchForGameResults(response: SearchGame.SearchForGame.Response)
}

class SearchGamePresenter: SearchGamePresentationLogic {
    weak var viewController: SearchGameDisplayLogic?

    // MARK: - Searching  -
    func presentSearchForGameResults(response: SearchGame.SearchForGame.Response) {
        let displayedGames = response.results.compactMap {
            SearchGame.SearchForGame.ViewModel.DisplayedGame(name: $0.name)
        }
        let model = SearchGame.SearchForGame.ViewModel(results: displayedGames)
        viewController?.displaySearchForGameResults(viewModel: model)
    }
}
