//
//  SearchGameDetailsRouter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 03/08/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

@objc protocol SearchGameDetailsRoutingLogic {
    func routeToSomewhere()
}

protocol SearchGameDetailsDataPassing {
    var dataStore: SearchGameDetailsDataStore? { get }
}

class SearchGameDetailsRouter: NSObject, SearchGameDetailsRoutingLogic, SearchGameDetailsDataPassing {
    weak var viewController: SearchGameDetailsViewController?
    var dataStore: SearchGameDetailsDataStore?

    // MARK: Routing

    func routeToSomewhere() {
//        let destinationVC = SomewhereViewController(nibName: nil, bundle: nil)
//        var destinationDS = destinationVC.router!.dataStore!
//        passDataToSomewhere(source: dataStore!, destination: &destinationDS)
//        navigateToSomewhere(source: viewController, destination: destinationVC)
    }

    // MARK: Navigation

//    func navigateToSomewhere(source: SearchGameDetailsViewController?, destination: SomewhereViewController) {
//        source?.show(destination, sender: nil)
//    }

    // MARK: Passing data

//    func passDataToSomewhere(source: SearchGameDetailsDataStore, destination: inout SomewhereDataStore) {
//
//    }
}
