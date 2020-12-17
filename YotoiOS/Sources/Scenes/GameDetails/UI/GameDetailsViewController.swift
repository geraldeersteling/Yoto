//
//  GameDetailsViewController.swift
//  Yoto
//
//  Created by Gerald Eersteling on 11/07/2020.
//  Copyright (c) 2020 Rockstars. All rights reserved.
//

import UIKit
import Resolver
import YotoKit

class GameDetailsViewController: UIViewController {
    @Injected var viewModel: GameDetailsViewModel

    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
