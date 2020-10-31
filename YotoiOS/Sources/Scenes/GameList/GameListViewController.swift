//
//  GameListViewController.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 31/10/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver
import UIKit
import YotoKit

public class GameListViewController: UIViewController {
    @Injected var viewModel: GameListViewModel

    override public var title: String? {
        get { "Your Game Top List" } // TODO: l10n
        set { _ = newValue }
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
    }
}
