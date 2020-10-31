//
//  GameListTableViewCell.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit
import YotoKit

public class GameListTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!

    override public func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
    }

}
