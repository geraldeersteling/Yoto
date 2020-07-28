//
//  GameListViewController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.

import UIKit

protocol GameListDisplayLogic: AnyObject {
    func displayGameList(viewModel: GameList.GetList.ViewModel)
}

class GameListViewController: UITableViewController, GameListDisplayLogic {
    // MARK: - Properties -

    var interactor: GameListBusinessLogic?
    var router: (NSObjectProtocol & GameListRoutingLogic & GameListDataPassing)?
    var gameList = [GameList.GetList.ViewModel.DisplayedGame]()

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
        let interactor = GameListInteractor()
        let presenter = GameListPresenter()
        let router = GameListRouter()
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
        setupTableView()
        getGameList()
    }

    // MARK: - Do something -

    func getGameList() {
        let request = GameList.GetList.Request()
        interactor?.getList(request: request)
    }

    func displayGameList(viewModel: GameList.GetList.ViewModel) {
        gameList = viewModel.displayedGames
        tableView.reloadData()
    }

    // MARK: - Tableview -

    func setupTableView() {
        tableView.register(UINib(nibName: "GameListTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "GameListTableViewCell")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        gameList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GameListTableViewCell") as? GameListTableViewCell
        else { fatalError("Couldn't dequeue a proper GameListTableViewCell") }

        cell.updateWithGame(gameList[indexPath.row])

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        router?.routeToGameDetails()
    }
}
