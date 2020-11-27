//
//  GameListViewController.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 31/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver
import RxCocoa
import RxSwift
import UIKit
import YotoKit

public class GameListViewController: UIViewController {
    @Injected var viewModel: GameListViewModel

    private let disposeBag = DisposeBag()

    @IBOutlet private var tableView: UITableView!
    @IBOutlet var spinner: UIActivityIndicatorView!

    override public var title: String? {
        get { "Your Game Top List" } // TODO: l10n
        set { _ = newValue }
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        setupBindings()

        viewModel.loadGames()
    }
}

extension GameListViewController {
    func configureUI() {
        configureAppeareance()
        configureTableView()
    }

    func configureAppeareance() {
        navigationController?.navigationBar.prefersLargeTitles = true
        spinner.translatesAutoresizingMaskIntoConstraints = false
        spinner.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        spinner.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    func configureTableView() {
        GameListTableViewCell.registerNib(forTableView: tableView)
    }

    func setupBindings() {
        viewModel.hasActivity
            .drive(spinner.rx.isAnimating)
            .disposed(by: disposeBag)

        viewModel.games
            .drive(tableView.rx.items(dataSource: GameListTableDataSource.dataSource()))
            .disposed(by: disposeBag)

//        tableView.rx.itemSelected
//            .bind { [weak self] in
//                if $0.row == 0 {}
//            }
//            .disposed(by: disposeBag)
    }
}
