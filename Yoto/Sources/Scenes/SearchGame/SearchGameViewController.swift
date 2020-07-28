//
//  SearchGameViewController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit

protocol SearchGameDisplayLogic: AnyObject {
    func displaySearchForGameResults(viewModel: SearchGame.SearchForGame.ViewModel)
}

class SearchGameViewController: UITableViewController, SearchGameDisplayLogic {
    var interactor: SearchGameBusinessLogic?
    var router: (NSObjectProtocol & SearchGameRoutingLogic & SearchGameDataPassing)?
    var searchResults = [SearchGame.SearchForGame.ViewModel.DisplayedGame]()

    override var title: String? {
        get { "Search a game" } // TODO: l10n
        set { _ = newValue }
    }

    // MARK: Object lifecycle

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    // MARK: Setup

    private func setup() {
        let viewController = self
        let interactor = SearchGameInteractor()
        let presenter = SearchGamePresenter()
        let router = SearchGameRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }

    // MARK: View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        customizeAppearance()
        setupSearch()
        setupTableview()
    }

    func customizeAppearance() {
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    func setupSearch() {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search for a game..." // TODO: l10n
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        definesPresentationContext = true
    }

    // MARK: - Start searching -

    func searchForGame(_ name: String) {
        let request = SearchGame.SearchForGame.Request(query: name)
        interactor?.searchForGame(request: request)
    }

    // MARK: - Displaying results -

    func displaySearchForGameResults(viewModel: SearchGame.SearchForGame.ViewModel) {
        // TODO: Use a difference algorithm to do this
        searchResults = viewModel.results
        tableView.reloadData()
    }
}

// MARK: - TableView

extension SearchGameViewController {
    func setupTableview() {
        tableView.register(UINib(nibName: "SearchGameTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "SearchGameTableViewCell")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        searchResults.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "SearchGameTableViewCell", for: indexPath) as? SearchGameTableViewCell
        else { fatalError("Couldn't dequeue the correct table cell") }

        cell.updateWithGame(searchResults[indexPath.row])
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        router?.routeToGameDetails()
    }
}

extension SearchGameViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard
            let query = searchController.searchBar.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines),
            !query.isEmpty
        else { return }

        searchForGame(query.lowercased())
    }
}
