//
//  OnboardingStepContainer.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 14/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import UIKit

class OnboardingStepContainer {
    typealias Step = UIViewController

    private(set) var steps: [Step]
    var delegate: OnboardingStepContainerDelegate?

    var firstStep: Step? {
        steps.first
    }

    var numberOfSteps: Int {
        steps.count
    }

    init(steps: [Step] = []) {
        self.steps = steps
        prepareSteps()
    }

    func prepareSteps() {
        let onboardingSteps = steps.compactMap { $0 as? OnboardingStep }
        for (i, var step) in onboardingSteps.enumerated() {
            step.delegate = self

            if steps.count > 1 {
                step.hasNext = i < steps.count - 1
                step.hasPrevious = i > 0
            }
        }
        steps = onboardingSteps.compactMap { $0 as? Step }
    }
}

// MARK: - Step handling -

extension OnboardingStepContainer {
    func step(before step: Step) -> Step? {
        guard
            let index = steps.firstIndex(of: step),
            (index - 1) >= 0
        else { return nil }

        return steps[index - 1]
    }

    func step(after step: Step) -> Step? {
        guard
            let index = steps.firstIndex(of: step),
            (index + 1) < steps.count
        else { return nil }

        return steps[index + 1]
    }

    func index(forStep step: Step) -> Int? {
        steps.firstIndex(of: step)
    }
}

// MARK: - Delegation -

extension OnboardingStepContainer: OnboardingStepDelegate {
    func stepForward() {
        delegate?.stepForward()
    }

    func stepBackward() {
        delegate?.stepBackward()
    }
}
