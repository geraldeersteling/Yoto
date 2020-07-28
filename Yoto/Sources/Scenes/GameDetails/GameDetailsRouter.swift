//
//  GameDetailsRouter.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

@objc protocol GameDetailsRoutingLogic {
    // func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol GameDetailsDataPassing {
    var dataStore: GameDetailsDataStore? { get }
}

class GameDetailsRouter: NSObject, GameDetailsRoutingLogic, GameDetailsDataPassing {
    weak var viewController: GameDetailsViewController?
    var dataStore: GameDetailsDataStore?

    // MARK: Routing

    // func routeToSomewhere(segue: UIStoryboardSegue?)
    // {
    //  if let segue = segue {
    //    let destinationVC = segue.destination as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //  } else {
    //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //    navigateToSomewhere(source: viewController!, destination: destinationVC)
    //  }
    // }

    // MARK: Navigation

    // func navigateToSomewhere(source: GameDetailsViewController, destination: SomewhereViewController)
    // {
    //  source.show(destination, sender: nil)
    // }

    // MARK: Passing data

    // func passDataToSomewhere(source: GameDetailsDataStore, destination: inout SomewhereDataStore)
    // {
    //  destination.name = source.name
    // }
}
