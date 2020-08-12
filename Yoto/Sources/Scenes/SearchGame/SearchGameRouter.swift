//
//  SearchGameRouter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit
import Resolver

@objc protocol SearchGameRoutingLogic {
    weak var viewController: SearchGameViewController? { get set }
    func routeToGameSearchDetails()
}

protocol SearchGameDataPassing {
    var dataStore: SearchGameDataStore { get }
}

typealias SearchGameRouterable = (NSObject & SearchGameRoutingLogic & SearchGameDataPassing)

class SearchGameRouter: SearchGameRouterable {
    weak var viewController: SearchGameViewController?
    let dataStore: SearchGameDataStore
    let searchGameDetails: SearchGameDetailsViewController

    init(dataStore: SearchGameDataStore, searchGameDetails: SearchGameDetailsViewController) {
        self.dataStore = dataStore
        self.searchGameDetails = searchGameDetails
        super.init()
    }

    // MARK: Routing

    func routeToGameSearchDetails() {
        let destinationVC = searchGameDetails
        var destinationDS = destinationVC.router!.dataStore!
        passDataToSomewhere(source: dataStore, destination: &destinationDS)
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
