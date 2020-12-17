//
//  Startup+Injection.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 08/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver
import YotoUIKit

extension Resolver {
    static func registerStartupGraph() {
        registerOnboarding()
        registerSignUp()
        registerSignIn()
    }

    static func registerOnboarding() {
        register { OnboardingCoordinator(flowViewController: resolve(OnboardingViewController.self)) }
        register { OnboardingViewController(nibName: nil, bundle: nil) }

        register { WelcomeStepViewController(nibName: nil,
                                             bundle: YotoiOSInfo.shared.bundle) }
        register { ListFeatureStepViewController(nibName: nil,
                                                 bundle: YotoiOSInfo.shared.bundle) }
        register { SearchFeatureStepViewController(nibName: nil,
                                                   bundle: YotoiOSInfo.shared.bundle) }
        
        register {
            OnboardingStepContainer(steps: [
                resolve(WelcomeStepViewController.self),
                resolve(ListFeatureStepViewController.self),
                resolve(SearchFeatureStepViewController.self)
            ])
        }
    }

    static func registerSignUp() {
        //
    }

    static func registerSignIn() {
        //
    }
}
