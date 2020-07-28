//
//  GameDetailsViewController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

protocol GameDetailsDisplayLogic: AnyObject {
    func displayGame(viewModel: GameDetails.GetGame.ViewModel)
}

class GameDetailsViewController: UIViewController, GameDetailsDisplayLogic {
    var interactor: GameDetailsBusinessLogic?
    var router: (NSObjectProtocol & GameDetailsRoutingLogic & GameDetailsDataPassing)?

    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!


    // MARK: Object lifecycle

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setupVIP()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupVIP()
    }

    // MARK: Setup

    private func setupVIP() {
        let viewController = self
        let interactor = GameDetailsInteractor()
        let presenter = GameDetailsPresenter()
        let router = GameDetailsRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }

    // MARK: Routing

    override func prepare(for segue: UIStoryboardSegue, sender _: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }

    // MARK: View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        getGame()
    }

    func getGame() {
        interactor?.getGame(request: GameDetails.GetGame.Request())
    }

    func displayGame(viewModel: GameDetails.GetGame.ViewModel) {
        nameLabel.text = viewModel.displayedGame.name
    }
}
