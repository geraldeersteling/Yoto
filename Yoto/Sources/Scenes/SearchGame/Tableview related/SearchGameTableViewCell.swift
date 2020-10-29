//
//  SearchGameTableViewCell.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit

class SearchGameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!

    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
    }

    func updateWithItem(_ item: SearchGameTableItem) {
        nameLabel.text = item.name
    }

}
