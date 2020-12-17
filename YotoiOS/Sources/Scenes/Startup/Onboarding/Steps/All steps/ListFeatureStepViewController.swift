//
//  ListFeatureStepViewController.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 09/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import PureLayout
import UIKit

class ListFeatureStepViewController: UIViewController, OnboardingStep {
    var delegate: OnboardingStepDelegate?

    private var nextButton = UIButton(forAutoLayout: ())
    private var previousButton = UIButton(forAutoLayout: ())

    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }

    func configureLayout() {
        
    }
}
