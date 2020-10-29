//
//  SearchGameTableSections.swift
//  Yoto
//
//  Created by Gerald Eersteling on 13/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import RxDataSources

struct SearchGameTableItem: IdentifiableType, Equatable {
    typealias Identity = Int

    let gameUri: GameUri
    let name: String

    static func == (lhs: SearchGameTableItem, rhs: SearchGameTableItem) -> Bool {
        lhs.gameUri.id == rhs.gameUri.id
    }

    var identity: Int {
        return gameUri.id
    }
}

struct SearchGameTableSection {
    var header: String
    var items: [SearchGameTableItem]
}

extension SearchGameTableSection: AnimatableSectionModelType {
    var identity: String {
        return header
    }

    init(original: SearchGameTableSection, items: [SearchGameTableItem]) {
        self = original
        self.items = items
    }
}

struct SearchGameTableDataSource {
    static func datasource() -> RxTableViewSectionedAnimatedDataSource<SearchGameTableSection> {
        let source = RxTableViewSectionedAnimatedDataSource<SearchGameTableSection>(configureCell: { (_, tableView, indexPath, item) -> UITableViewCell in
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SearchGameTableViewCell", for: indexPath) as? SearchGameTableViewCell
            else { fatalError("Couldn't dequeue the correct table cell") }

            cell.updateWithItem(item)
            return cell
        })

        source.titleForHeaderInSection = { datasource, index in
            datasource.sectionModels[index].header
        }

        return source
    }
}
