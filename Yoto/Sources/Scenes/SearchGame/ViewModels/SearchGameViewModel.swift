//
//  SearchGameViewModel.swift
//  Yoto
//
//  Created by Gerald Eersteling on 12/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

class SearchGameViewModel {
    private let disposeBag = DisposeBag()
    var repository: GamesRepository

    private let searchResultsRelay = BehaviorRelay<[SearchGameTableSection]>(value: [])
    var searchResults: Driver<[SearchGameTableSection]> {
        searchResultsRelay.asDriver()
    }

    private let isSearchingRelay = BehaviorRelay<Bool>(value: false)
    var isSearching: Driver<Bool> {
        isSearchingRelay.asDriver()
    }

    var numberOfSections: Int {
        searchResultsRelay.value.count
    }

    var numberOfSearchResults: Int {
        searchResultsRelay.value[0].items.count
    }

    // MARK: - Initializing -

    init(repository: GamesRepository) {
        self.repository = repository
    }

    // MARK: - Searching -

    func installSearchDriver(_ driver: Driver<String>) {
        driver
            .debounce(.milliseconds(300))
            .distinctUntilChanged()
            .filter({ !$0.isEmpty })
            .drive(onNext: { [weak self] query in
                self?.search(query: query)
            })
            .disposed(by: disposeBag)
    }

    func search(query: String) {
        isSearchingRelay.accept(true)
        repository.searchGames(query)
            .subscribe(
                onSuccess: { [weak self] in
                    let items = $0.compactMap {
                        SearchGameTableItem(gameUri: $0.uri, name: $0.name)
                    }
                    self?.searchResultsRelay.accept([SearchGameTableSection(header: "Search Results", items: items)]) // TODO: l10n
                    self?.isSearchingRelay.accept(false)
                },
                onError: { print("//TODO: UNHANDLED ERROR: \($0)") })
            .disposed(by: disposeBag)
    }

    // MARK: - Providing methods -

    func item(at index: Int) -> SearchGameTableItem? {
        guard !searchResultsRelay.value[0].items.isEmpty
        else { return nil }
        return searchResultsRelay.value[0].items[index]
    }

    func uriForGame(at index: Int) -> GameUri? {
        guard let item = item(at: index)
        else { return nil }
        return item.gameUri
    }
}
