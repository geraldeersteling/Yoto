//
//  GameListViewModel.swift
//  YotoKit
//
//  Created by Gerald Eersteling on 31/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver
import RxCocoa
import RxSwift

public class GameListViewModel: ActivityIndicatingModel {
    // TODO: This is potentially ugly, specifying the name here--we should do this at the DI site.
    //       We can use things such as compiler flags _there_ to determine which repository to load.
    @Injected(name: Resolver.RepositoryNames.Games.inMemory.rawValue) private var repository: GamesRepository

    private let disposeBag = DisposeBag()

    private let gamesRelay = BehaviorRelay<[TableSectionModel]>(value: [])
    public var games: Driver<[TableSectionModel]> {
        gamesRelay.asDriver()
    }

    public func loadGames() {
        repository.allGames().subscribe { [weak self] in
            let sectionItems = $0.map {
                SectionItemModel.RegularGameSectionItem(uri: $0.uri, name: $0.name)
            }
            let topThree = Array(sectionItems.prefix(3))
            let theRest = Array(sectionItems.suffix(from: 3))

            let sections = [
                TableSectionModel.RegularGameSection(title: "Top Games", items: topThree), // TODO: L10n
                TableSectionModel.RegularGameSection(title: "The Rest", items: theRest) // TODO: L10n
            ]
            self?.gamesRelay.accept(sections)

        } onError: {
            print("//TODO: UNHANDLED ERROR: \($0)")
        }
        .disposed(by: disposeBag)
    }
}
