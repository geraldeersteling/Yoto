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
    static let searchGameTableItems = generateSectionItems(5)
    static let searchGameItemTableSections = generateTableSections(3)

    static var firstSearchGameTableItem: SectionItemModel {
        searchGameTableItems[0]
    }

    static var firstSearchGameTableSection: TableSectionModel {
        searchGameItemTableSections[0]
    }

    static func generateSectionItems(_ count: Int) -> [SectionItemModel] {
        var models = [SectionItemModel]()
        for i in 0...count {
            models.append(
                SectionItemModel.RegularGameSectionItem(uri: GameUri(id: i), name: "Game \(i)")
            )
        }
        return models
    }

    static func generateTableSections(_ count: Int) -> [TableSectionModel] {
        var models = [TableSectionModel]()
        for i in 0...count {
            models.append(
                TableSectionModel.RegularGameSection(title: "Section \(i)", items: generateSectionItems(5))
            )
        }
        return models
    }

    static func uriForTableItem(_ item: SectionItemModel) -> GameUri {
        switch item {
            case let SectionItemModel.RegularGameSectionItem(uri, _):
                return uri
        }
    }
}
