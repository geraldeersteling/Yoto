//
//  GamesTargetStub.swift
//  YotoTests
//
//  Created by Gerald Eersteling on 13/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Nimble
import OHHTTPStubs
@testable import YotoKit

struct GamesTargetStub {

    static let stubHost = isHost(IGDB.baseURL.host!)

    static func stubSearchForGame(withSeeds seeds: [Game] = [GameSeeds.firstSeed]) {
        let jsonSeeds = seeds.compactMap { $0.toJSON() }
        let searchPath = stubTargetPath(GamesTarget.searchForGame(query: ""))
        stub(condition: stubHost && isPath(searchPath)) { _ in
            HTTPStubsResponse(jsonObject: jsonSeeds,
                              statusCode: 200,
                              headers: nil)
        }.name = "Stub for returning a list of games"
    }

    static func stubDetailsForGame() {
        let gamesPath = stubTargetPath(GamesTarget.detailsForGame(uri: GameUri(id: 1)))
        stub(condition: stubHost && isPath(gamesPath)) { _ in
            HTTPStubsResponse(jsonObject: [GameSeeds.firstSeed.toJSON()],
                              statusCode: 200,
                              headers: nil)
        }.name = "Stub for resolving a game at the API"
    }
}
