//
//  GameListRouter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

@objc protocol GameListRoutingLogic {
    func routeToGameDetails()
}

protocol GameListDataPassing {
    var dataStore: GameListDataStore? { get }
}

class GameListRouter: NSObject, GameListRoutingLogic, GameListDataPassing {
    weak var viewController: GameListViewController?
    var dataStore: GameListDataStore?

    // MARK: Routing

    func routeToGameDetails() {
        let destinationVC = GameDetailsViewController(nibName: nil, bundle: nil)
        var destinationDS = destinationVC.router?.dataStore
        passDataToGameDetails(from: dataStore!, destination: &destinationDS!)
        navigateToGameDetails(viewController, destination: destinationVC)
    }

    // MARK: Navigation

    func navigateToGameDetails(_ source: GameListViewController?, destination: GameDetailsViewController) {
        source?.show(destination, sender: nil)
    }

    // MARK: Passing data

    func passDataToGameDetails(from source: GameListDataStore, destination: inout GameDetailsDataStore ) {
        guard let row = viewController?.tableView.indexPathForSelectedRow?.row
        else { return }
        destination.game = source.games[row]
    }
}
