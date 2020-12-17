//
//  OnboardingViewModel.swift
//  YotoKit
//
//  Created by Gerald Eersteling on 08/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver

public class OnboardingViewModel {
    @Injected private var repository: OnboardingRepository

    var needsOnboarding: Bool {
        repository.onboardingCompleted
    }

    func onboardingDidComplete() {
        repository.onboardingDidComplete()
    }
}
