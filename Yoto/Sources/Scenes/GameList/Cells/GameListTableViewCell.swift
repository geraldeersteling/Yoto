//
//  GameListTableViewCell.swift
//  Yoto
//
//  Created by Gerald Eersteling on 15/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit

class GameListTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!

    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
    }

    func updateWithGame(_ game: GameList.GetList.ViewModel.DisplayedGame) {
        nameLabel.text = game.name
    }
}
