//
//  SearchGameRouter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

@objc protocol SearchGameRoutingLogic {
    func routeToGameSearchDetails()
}

protocol SearchGameDataPassing {
    var dataStore: SearchGameDataStore? { get }
}

class SearchGameRouter: NSObject, SearchGameRoutingLogic, SearchGameDataPassing {
    weak var viewController: SearchGameViewController?
    var dataStore: SearchGameDataStore?

    // MARK: Routing

    func routeToGameSearchDetails() {
        let destinationVC = SearchGameDetailsViewController(nibName: nil, bundle: nil)
        var destinationDS = destinationVC.router!.dataStore!
        passDataToSomewhere(source: dataStore!, destination: &destinationDS)
        navigateToGameDetails(source: viewController, destination: destinationVC)
    }

    // MARK: Navigation

    func navigateToGameDetails(source: SearchGameViewController?, destination: SearchGameDetailsViewController) {
        source?.show(destination, sender: nil)
    }

    // MARK: Passing data

    func passDataToSomewhere(source: SearchGameDataStore, destination: inout SearchGameDetailsDataStore) {
        guard let selectedRow = viewController?.tableView.indexPathForSelectedRow?.row
        else { return }
        destination.game = source.searchResults[selectedRow]
    }
}
