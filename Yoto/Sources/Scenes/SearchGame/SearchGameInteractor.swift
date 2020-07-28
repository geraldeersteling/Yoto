//
//  SearchGameInteractor.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

protocol SearchGameBusinessLogic {
    func searchForGame(request: SearchGame.SearchForGame.Request)
}

protocol SearchGameDataStore {
    var searchResults: [Game] { get }
}

class SearchGameInteractor: SearchGameBusinessLogic, SearchGameDataStore {
    var presenter: SearchGamePresentationLogic?
    var worker = SearchGameWorker(SearchGameMemRepository())
    var searchResults = [Game]()

    // MARK: Searching

    func searchForGame(request: SearchGame.SearchForGame.Request) {
        worker.searchGame(request.query) {
            searchResults = $0
            let response = SearchGame.SearchForGame.Response(results: searchResults)
            presenter?.presentSearchForGameResults(response: response)
        }

    }
}
