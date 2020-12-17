//
//  SearchGameTableViewCell.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit
import YotoKit
import YotoUIKit

class SearchGameTableViewCell: UITableViewCell {
    struct Updater {
        var name: String
    }

    @IBOutlet var nameLabel: UILabel!

    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
    }

    func update(_ updater: Updater) {
        nameLabel.text = updater.name
    }
}

extension SearchGameTableViewCell: TableViewRegisterable {
    public static var reIdentifier: String = "SearchGameTableViewCell"
}
