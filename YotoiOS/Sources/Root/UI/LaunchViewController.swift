//
//  LaunchViewController.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 08/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit
import PureLayout
import YotoResources

class LaunchViewController: UIViewController {
    private let spinner = UIActivityIndicatorView(forAutoLayout: ())

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSubViews()
    }

    func configureSubViews() {
        view.backgroundColor = Asset.Colors.primaryBlue.color
        view.addSubview(spinner)
        spinner.startAnimating()
        spinner.style = .large
        spinner.autoCenterInSuperview()
    }

}
