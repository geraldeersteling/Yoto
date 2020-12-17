//
//  OnboardingStep.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 17/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation

protocol OnboardingStepDelegate {
    func stepForward()
    func stepBackward()
}

protocol OnboardingStep {
    var delegate: OnboardingStepDelegate? { get set }
}
