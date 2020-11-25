//
//  TableViewRegisterable.swift
//  YotoUIKit
//
//  Created by Gerald Eersteling on 24/11/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit

/// A convenience protocol which makes `UITableViewCell` subclasses able to register themselves with tableviews
public protocol TableViewRegisterable where Self: UITableViewCell {
    /// The reuseIdentifier which the tableView will use to dequeue cells of this type
    static var reIdentifier: String { get }

    /// Registers the the `nib` for this cell to the tableView
    static func registerNib(forTableView tableView: UITableView)
}

public extension TableViewRegisterable {
    static func registerNib(forTableView tableView: UITableView) {
        tableView.register(
            UINib(nibName: reIdentifier, bundle: Bundle(for: Self.self)),
            forCellReuseIdentifier: reIdentifier
        )
    }
}
