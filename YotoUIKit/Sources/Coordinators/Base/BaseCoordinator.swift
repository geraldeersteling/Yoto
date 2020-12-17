//
//  MainCoordinator.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 08/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import RxSwift
import UIKit

open class BaseCoordinator: Coordinator {
    private var disposeBag = DisposeBag()
    private var childCoordinators = [Coordinator]()

    public var flowViewController: UIViewController
    public var coordinatorStatus = PublishSubject<CoordinatorStatus>()
    public var removeChildsAutomatically = true

    public init(flowViewController: UIViewController = UINavigationController()) {
        self.flowViewController = flowViewController
    }

    open func start() {
        fatalError("A main coordinator needs an implemented `start` method!")
    }

    open func start(_ child: Coordinator) {
        childCoordinators.append(child)
        bindChildCoordinator(child)
        child.start()
    }

    open func coordinatorDidFinish(_ child: Coordinator) {}

    private func bindChildCoordinator(_ child: Coordinator) {
        child.coordinatorStatus
            .subscribe(onNext: { [weak self] in
                self?.handleCoordinatorStatus($0, forChild: child)
            })
            .disposed(by: disposeBag)
    }

    func handleCoordinatorStatus(_ status: CoordinatorStatus, forChild child: Coordinator) {
        switch status {
            case .didFinish:
                if removeChildsAutomatically {
                    removeChildCoordinator(child)
                }
                coordinatorDidFinish(child)
        }
    }

    private func removeChildCoordinator(_ child: Coordinator) {
        if let index = childCoordinators.firstIndex(where: { $0 === child }) {
            childCoordinators.remove(at: index)
        }
    }
}
