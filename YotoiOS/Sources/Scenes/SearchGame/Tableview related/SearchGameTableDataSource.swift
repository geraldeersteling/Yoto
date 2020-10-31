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
    public static func datasource() -> RxTableViewSectionedAnimatedDataSource<SearchGameTableSection> {
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
