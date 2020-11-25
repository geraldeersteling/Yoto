//
//  SearchGameTableDataSource.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 31/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import RxDataSources
import YotoKit

public struct SearchGameTableDataSource {
    public static func datasource() -> RxTableViewSectionedAnimatedDataSource<TableSectionModel> {
        let source = RxTableViewSectionedAnimatedDataSource<TableSectionModel>(configureCell: { (_, tableView, indexPath, item) -> UITableViewCell in
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SearchGameTableViewCell", for: indexPath) as? SearchGameTableViewCell
            else { fatalError("Couldn't dequeue the correct table cell") }

            switch item {
                case .RegularGameSectionItem(uri: _, let name):
                    cell.update(SearchGameTableViewCell.Updater(name: name))
            }

            return cell
        })

        source.titleForHeaderInSection = { datasource, index in
            datasource.sectionModels[index].title
        }

        return source
    }
}
