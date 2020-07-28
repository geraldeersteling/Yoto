//
//  SearchGameWorker.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import UIKit

protocol SearchGameRepository {
    func searchGame(_ query: String, completion: ([Game]) -> Void)
}

class SearchGameWorker {
    var searchGameRepository: SearchGameRepository

    init(_ repository: SearchGameRepository) {
        searchGameRepository = repository
    }

    func searchGame(_ query: String, completion: ([Game]) -> Void) {
        searchGameRepository.searchGame(query) {
            completion($0)
        }
    }
}
