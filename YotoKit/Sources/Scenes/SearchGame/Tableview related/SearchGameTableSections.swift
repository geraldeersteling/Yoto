//
//  SearchGameTableSections.swift
//  Yoto
//
//  Created by Gerald Eersteling on 13/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import RxDataSources

public struct SearchGameTableItem: IdentifiableType, Equatable {
    public typealias Identity = Int

    public let gameUri: GameUri
    public let name: String

    public static func == (lhs: SearchGameTableItem, rhs: SearchGameTableItem) -> Bool {
        lhs.gameUri.id == rhs.gameUri.id
    }

    public var identity: Int {
        return gameUri.id
    }
}

public struct SearchGameTableSection {
    public var header: String
    public var items: [SearchGameTableItem]
}

extension SearchGameTableSection: AnimatableSectionModelType {
    public var identity: String {
        return header
    }

    public init(original: SearchGameTableSection, items: [SearchGameTableItem]) {
        self = original
        self.items = items
    }
}
