//
//  LaunchRepository.swift
//  YotoKit
//
//  Created by Gerald Eersteling on 08/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver

public class LaunchRepository {
    private let onboardingCompletedKey = "eu.rockstars.yoto.onboardingcompleted"
    private var userDefaults: UserDefaults

    public var onboardingCompleted: Bool {
        userDefaults.bool(forKey: onboardingCompletedKey)
    }

    public init(userDefaults: UserDefaults) {
        self.userDefaults = userDefaults
    }

    public func onboardingDidComplete() {
        userDefaults.setValue(true, forKey: onboardingCompletedKey)
    }
}
