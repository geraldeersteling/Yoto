//
//  Startup+Injection.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 08/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver
import YotoKit
import YotoResources
import YotoUIKit

extension Resolver {
    static func registerStartupGraph() {
        registerOnboarding()
        registerSignUp()
        registerSignIn()
    }

    static func registerOnboarding() {
        register { OnboardingCoordinator(flowViewController: resolve(OnboardingViewController.self)) }
        register { OnboardingViewController(nibName: nil, bundle: YotoiOSInfo.shared.bundle) }

        let welcomeStep = OnboardingStepModel(
            title: "Welcome", // TODO: L10n
            body:
            """
            With YOur TOp 100 (Yoto for short) you can add and manage your top 100 games!

            It's finaly time to get your game cabinet organised once and for all!
            """, // TODO: L10n
            image: Asset.Images.Onboarding.welcome.image
        )
        let listFeatureStep = OnboardingStepModel(
            title: "Make lists", // TODO: L10n
            body:
            """
            Create and organise your list of 100 games.

            If one list isn't enough, you can also create more!
            """ // TODO: L10n
        )
        let searchFeatureStep = OnboardingStepModel(
            title: "Search games", // TODO: L10n
            body:
            """
            Tired of manually entering the details of your game?
            Worry not! You can search for your game online and add it straight to your Top 100!
            """ // TODO: L10n
        )

        let steps = [
            welcomeStep,
            listFeatureStep,
            searchFeatureStep
        ].map { BasicOnboardingStepViewController(model: $0) }

        register {
            OnboardingStepContainer(steps: steps)
        }
    }

    static func registerSignUp() {
        //
    }

    static func registerSignIn() {
        //
    }
}
