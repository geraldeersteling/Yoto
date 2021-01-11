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

public class SearchGameViewModel {
    private let disposeBag = DisposeBag()
    var repository: SearchGamesRepository

    public var searchQuery = PublishRelay<String>()

    private let searchResultsRelay = BehaviorRelay<[TableSectionModel]>(value: [])
    public var searchResults: Driver<[TableSectionModel]> {
        searchResultsRelay.asDriver()
    }

    private let searchingIndicator = ActivityIndicator()
    public var isSearching: Driver<Bool> {
        searchingIndicator.asObservable().asDriver(onErrorJustReturn: false)
    }

    public var numberOfSections: Int {
        searchResultsRelay.value.count
    }

    public var numberOfSearchResults: Int {
        searchResultsRelay.value.first?.items.count ?? 0
    }

    // MARK: - Initializing -

    public init(repository: SearchGamesRepository) {
        self.repository = repository

        // QUESTION -- if this subscription propegates an error, the stream completes and we can't search anymore.
        //             What would be the best way to then re-subscribe or not dispose of the sequence?
        searchQuery
            .debounce(.milliseconds(500), scheduler: ConcurrentDispatchQueueScheduler(qos: .userInitiated))
            .distinctUntilChanged()
            .filter { !$0.isEmpty }
            .flatMapLatest {
                repository
                    .searchGames($0)
                    // TODO: Properly handle errors (such as a 401). An option could be to return a `Result`
                    //       from repositories instead of a `Single`
                    // TODO: Introduce a "ErrorResponder" protocol which viemodels can use to propegate these errors to
                    .catchErrorJustReturn([])
                    .trackActivity(self.searchingIndicator)
            }
            .mapMany { SectionItemModel.RegularGameSectionItem(uri: $0.uri, name: $0.name) }
            .subscribe(
                onNext: { [weak self] in
                    let sections = [TableSectionModel.RegularGameSection(title: "\($0.count) result(s)", // TODO: l10n
                                                                         items: $0)]
                    self?.searchResultsRelay.accept(sections)
                },
                onError: { print("//TODO: UNHANDLED ERROR: \($0)") }
            )
            .disposed(by: disposeBag)
    }

    // MARK: - Providing methods -

    public func item(at index: Int) -> SectionItemModel? {
        guard
            let empty = searchResultsRelay.value.first?.items.isEmpty,
            !empty
        else { return nil }
        return searchResultsRelay.value[0].items[index]
    }

    public func uriForGame(at index: Int) -> GameUri? {
        guard let item = item(at: index)
        else { return nil }

        switch item {
            case let SectionItemModel.RegularGameSectionItem(uri, _):
                return uri
        }
    }
}
