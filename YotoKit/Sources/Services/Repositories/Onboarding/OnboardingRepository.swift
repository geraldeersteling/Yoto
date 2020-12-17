//
//  OnboardingRepository.swift
//  YotoKit
//
//  Created by Gerald Eersteling on 07/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver

public class OnboardingRepository {
    @Injected private var userDefaults: UserDefaults

    private let onboardingCompletedKey = "eu.rockstars.yoto.onboardingcompleted"

    public var onboardingCompleted: Bool {
        userDefaults.bool(forKey: onboardingCompletedKey)
    }

    public func onboardingDidComplete() {
        userDefaults.setValue(true, forKey: onboardingCompletedKey)
    }
}
