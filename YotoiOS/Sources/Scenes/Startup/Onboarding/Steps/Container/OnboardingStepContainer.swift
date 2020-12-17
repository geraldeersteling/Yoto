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

    let steps: [Step]
    var delegate: OnboardingStepContainerDelegate?

    var firstStep: Step? {
        steps.first
    }

    var numberOfSteps: Int {
        steps.count
    }

    init(steps: [Step] = []) {
        self.steps = steps
        self.steps.forEach {
            if var step = $0 as? OnboardingStep {
                step.delegate = self
            }
        }
    }

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

extension OnboardingStepContainer: OnboardingStepDelegate {
    func stepForward() {
        delegate?.stepForward()
    }

    func stepBackward() {
        delegate?.stepBackward()
    }
}
