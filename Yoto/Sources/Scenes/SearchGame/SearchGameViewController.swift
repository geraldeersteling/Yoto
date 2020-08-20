//
//  SearchGameViewController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import Resolver
import RxCocoa
import RxSwift
import UIKit

class SearchGameViewController: UIViewController {
    @Injected var viewModel: SearchGameViewModel
    @Injected var router: SearchGameRoutingLogic

    private let disposeBag = DisposeBag()
    private let spinner = UIActivityIndicatorView(style: .large)

    @IBOutlet var tableView: UITableView!

    override var title: String? {
        get { "Search a game" } // TODO: l10n
        set { _ = newValue }
    }

    // MARK: View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        customizeAppearance()
        setupSearch()
        setupBindings()
        setupTableview()
    }

    func customizeAppearance() {
        navigationController?.navigationBar.prefersLargeTitles = true
        spinner.hidesWhenStopped = true
        spinner.stopAnimating()
        spinner.center = tableView.center
        view.addSubview(spinner)
        view.bringSubviewToFront(spinner)
    }

    func setupSearch() {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search for a game..." // TODO: l10n
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        definesPresentationContext = true

        let searchBar = searchController.searchBar

        searchBar.rx.searchButtonClicked
            .asDriver()
            .drive(onNext: { [weak self] in
                self?.navigationItem.searchController?.searchBar.resignFirstResponder()
            }).disposed(by: disposeBag)
    }

    func setupBindings() {
        let searchBar = navigationItem.searchController?.searchBar
        searchBar?.rx.text.orEmpty
            .bind(to: viewModel.searchQuery)
            .disposed(by: disposeBag)

        viewModel.searchResults
            .drive(tableView.rx.items(dataSource: SearchGameTableDataSource.datasource()))
            .disposed(by: disposeBag)
        viewModel.isSearching
            .drive(spinner.rx.isAnimating)
            .disposed(by: disposeBag)
    }
}

// MARK: - TableView

extension SearchGameViewController {
    func setupTableview() {
        tableView.register(UINib(nibName: "SearchGameTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "SearchGameTableViewCell")

        tableView.rx.itemSelected
            .bind { [weak self] in
                if let uri = self?.viewModel.item(at: $0.row)?.gameUri {
                    self?.router.routeToGameSearchDetails(uri, from: self)
                }
            }
            .disposed(by: disposeBag)
    }
}
