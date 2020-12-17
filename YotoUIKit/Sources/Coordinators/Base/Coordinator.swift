//
//  Coordinator.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 07/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit
import RxSwift

public enum CoordinatorStatus {
    case didFinish
}

public protocol Coordinator: AnyObject {
    /// The viewcontroller used to control the flow in _this_ Coordinator
    var flowViewController: UIViewController { get set }

    var coordinatorStatus: PublishSubject<CoordinatorStatus> { get }

    func start()
    func start(_ child: Coordinator)

    func prepareMainViewController()
}

extension Coordinator {
    public func prepareMainViewController() {
        // Default implementation to make this method optional
    }
}
