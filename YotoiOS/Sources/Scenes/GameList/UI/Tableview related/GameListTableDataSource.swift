//
//  GameListTableDataSource.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 25/11/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import RxDataSources
import YotoKit

class GameListTableDataSource: RxTableViewSectionedAnimatedDataSource<TableSectionModel> {
    public static func dataSource() -> RxTableViewSectionedAnimatedDataSource<TableSectionModel> {
        let source = RxTableViewSectionedAnimatedDataSource<TableSectionModel> { (_, tableView, indexPath, item) -> UITableViewCell in
            guard let cell = tableView.dequeueReusableCell(withIdentifier: GameListTableViewCell.reIdentifier, for: indexPath) as? GameListTableViewCell
            else { fatalError("Couldn't dequeue the correct table cell") }

            switch item {
                case .RegularGameSectionItem(_, let name):
                    cell.update(GameListTableViewCell.Updater(name: name))
            }

            return cell
        }

        source.titleForHeaderInSection = { datasource, index in
            datasource.sectionModels[index].title
        }

        return source
    }
}
