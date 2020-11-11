//
//  SearchGameSeeds.swift
//  YotoTests
//
//  Created by Gerald Eersteling on 19/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
@testable import YotoKit

struct SearchGameSeeds {

    static let searchGameTableItems = [
        SearchGameTableItem(gameUri: GameUri(id: 1), name: "Game 1"),
        SearchGameTableItem(gameUri: GameUri(id: 2), name: "Game 2"),
        SearchGameTableItem(gameUri: GameUri(id: 3), name: "Game 3")
    ]

    static let firstSearchGameTableItem = searchGameTableItems[0]

    static let searchGameItemTableSections = [
        SearchGameTableSection(header: "Section 1", items: searchGameTableItems),
        SearchGameTableSection(header: "Section 2", items: searchGameTableItems),
        SearchGameTableSection(header: "Section 3", items: searchGameTableItems)
    ]

    static let firstSearchGameTableSection = searchGameItemTableSections[0]
}
