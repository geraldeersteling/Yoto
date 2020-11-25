//
//  GameListTableViewCell.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit
import YotoKit
import YotoUIKit

public class GameListTableViewCell: UITableViewCell {
    struct Updater {
        let name: String
    }

    @IBOutlet var nameLabel: UILabel!

    override public func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
    }

    func update(_ updater: Updater) {
        nameLabel.text = updater.name
    }
}

extension GameListTableViewCell: TableViewRegisterable {
    public static var reIdentifier: String = "GameListTableViewCell"
}
