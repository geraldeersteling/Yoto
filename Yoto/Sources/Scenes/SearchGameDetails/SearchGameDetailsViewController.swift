//
//  SearchGameDetailsViewController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 03/08/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import UIKit

protocol SearchGameDetailsDisplayLogic: AnyObject {
}

class SearchGameDetailsViewController: UIViewController, SearchGameDetailsDisplayLogic {
    // MARK: - Properties -
    var interactor: SearchGameDetailsBusinessLogic?
    var router: (NSObjectProtocol & SearchGameDetailsRoutingLogic & SearchGameDetailsDataPassing)?

    // MARK: - Object lifecycle -

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setupVIP()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupVIP()
    }

    // MARK: - Setup -

    private func setupVIP() {
        let viewController = self
        let interactor = SearchGameDetailsInteractor()
        let presenter = SearchGameDetailsPresenter()
        let router = SearchGameDetailsRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }

    // MARK: - View lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Do something -

}
