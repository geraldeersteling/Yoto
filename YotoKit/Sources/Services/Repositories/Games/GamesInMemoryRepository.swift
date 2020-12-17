//
//  GamesInMemoryRepository.swift
//  YotoKit
//
//  Created by Gerald Eersteling on 31/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import RxSwift
import YotoUIKit

public class GamesInMemoryRepository: GamesRepository {
    // MARK: - Stub data -

    let games: [Game] = {
        var games = [Game]()
        for i in 1...10 {
            games.append(
                try! Game(JSON: ["id": i, "name": "The Game \(i)"])
            )
        }
        return games
    }()

    public init() {}

    public func allGames() -> Single<[Game]> {
        return Single<[Game]>.create { [weak self] single in
            if let strongSelf = self {
                single(.success(strongSelf.games))
            } else {
                single(.error(GenericError.generic))
            }

            return Disposables.create()
        }
    }
}
