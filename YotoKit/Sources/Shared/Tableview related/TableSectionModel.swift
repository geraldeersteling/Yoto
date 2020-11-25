//
//  GameTableSection.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 12/11/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import RxDataSources

public enum TableSectionModel {
    case RegularGameSection(title: String, items: [SectionItemModel])
}

extension TableSectionModel: AnimatableSectionModelType {
    public typealias Item = SectionItemModel

    public var identity: String {
        switch self {
            case .RegularGameSection(let title, items: _):
                return title
        }
    }

    public init(original: TableSectionModel, items: [Item]) {
        switch original {
            case .RegularGameSection(let title, items: _):
                self = .RegularGameSection(title: title, items: items)
        }
    }

    public var title: String {
        switch self {
            case .RegularGameSection(let title, items: _):
                return title
        }
    }


    public var items: [SectionItemModel] {
        switch self {
            case .RegularGameSection(title: _, let items):
                return items
        }
    }
}
