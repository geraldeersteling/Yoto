//
//  AppCoordinator.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 07/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit
import Resolver
import YotoKit
import YotoUIKit

public class AppCoordinator: BaseCoordinator {
    @Injected private var launchRepository: LaunchRepository
    private let window: UIWindow

    init(window: UIWindow, flowViewController: UIViewController) {
        self.window = window
        super.init(flowViewController: flowViewController)
    }

    public override func start() {
        window.rootViewController = flowViewController
        window.makeKeyAndVisible()

        if launchRepository.onboardingCompleted {

        } else {
            let onboardingCoordinator: OnboardingCoordinator = Resolver.resolve()

            window.rootViewController = onboardingCoordinator.flowViewController

            UIView.transition(with: window,
                              duration: 0.3,
                              options: [.transitionCrossDissolve]) {
                self.start(onboardingCoordinator)
            }
        }

        // TODO: Determine if signin/signup is needed
        // make signCoordinator
        // start(signCoordinator)
    }
}
