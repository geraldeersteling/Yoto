//
//  SearchGameInteractor.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit
import Cleanse

protocol SearchGameBusinessLogic {
    var presenter: SearchGamePresentationLogic { get set }
    func searchForGame(request: SearchGame.SearchForGame.Request)
}

protocol SearchGameDataStore {
    var searchResults: [Game] { get }
}

class SearchGameInteractor: SearchGameBusinessLogic, SearchGameDataStore {
    var presenter: SearchGamePresentationLogic
    let repository: GamesRepository
    var searchResults = [Game]()

    init(presenter: SearchGamePresentationLogic, repository: GamesRepository) {
        self.presenter = presenter
        self.repository = repository
    }

    // MARK: Searching

    func searchForGame(request: SearchGame.SearchForGame.Request) {
        repository.searchGames(request.query) {
            self.searchResults = $0
            let response = SearchGame.SearchForGame.Response(results: self.searchResults)
            self.presenter.presentSearchForGameResults(response: response)
        }
    }
}


