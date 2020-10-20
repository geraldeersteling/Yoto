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
import RxSwiftExt
import RxSwiftUtilities

class SearchGameViewModel {
    private let disposeBag = DisposeBag()
    var repository: GamesRepository

    var searchQuery = PublishRelay<String>()

    private let searchResultsRelay = BehaviorRelay<[SearchGameTableSection]>(value: [])
    var searchResults: Driver<[SearchGameTableSection]> {
        searchResultsRelay.asDriver()
    }

    private let searchingIndicator = ActivityIndicator()
    var isSearching: Driver<Bool> {
        searchingIndicator.asObservable().asDriver(onErrorJustReturn: false)
    }

    var numberOfSections: Int {
        searchResultsRelay.value.count
    }

    var numberOfSearchResults: Int {
        searchResultsRelay.value.first?.items.count ?? 0
    }

    // MARK: - Initializing -

    init(repository: GamesRepository) {
        self.repository = repository

        searchQuery
            .debounce(.milliseconds(500), scheduler: ConcurrentDispatchQueueScheduler(qos: .userInitiated))
            .distinctUntilChanged()
            .filter { !$0.isEmpty }
            .flatMapLatest {
                repository
                    .searchGames($0)
                    .trackActivity(self.searchingIndicator)
            }
            .mapMany { SearchGameTableItem(gameUri: $0.uri, name: $0.name) }
            .subscribe(
                onNext: { [weak self] in
                    self?.searchResultsRelay.accept([SearchGameTableSection(header: "\($0.count) result(s)", items: $0)]) // TODO: l10n
                },
                onError: { print("//TODO: UNHANDLED ERROR: \($0)") }
            )
            .disposed(by: disposeBag)
    }

    // MARK: - Providing methods -

    func item(at index: Int) -> SearchGameTableItem? {
        guard
            let empty = searchResultsRelay.value.first?.items.isEmpty,
            !empty
        else { return nil }
        return searchResultsRelay.value[0].items[index]
    }

    func uriForGame(at index: Int) -> GameUri? {
        guard let item = item(at: index)
        else { return nil }
        return item.gameUri
    }
}
