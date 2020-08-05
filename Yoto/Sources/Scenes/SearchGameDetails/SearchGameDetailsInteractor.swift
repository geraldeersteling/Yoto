//
//  SearchGameDetailsInteractor.swift
//  Yoto
//
//  Created by Gerald Eersteling on 03/08/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

protocol SearchGameDetailsBusinessLogic {
}

protocol SearchGameDetailsDataStore {
    var game: Game! { get set }
}

class SearchGameDetailsInteractor: SearchGameDetailsBusinessLogic, SearchGameDetailsDataStore {
    var presenter: SearchGameDetailsPresentationLogic?
    var worker: SearchGameDetailsWorker?
    var game: Game!

    // MARK: Do something

}
