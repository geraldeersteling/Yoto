//
//  WelcomeStepViewController.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 09/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import PureLayout
import UIKit
import YotoResources

class WelcomeStepViewController: UIViewController, OnboardingStep {
    var delegate: OnboardingStepDelegate?

    private var titleLabel = UILabel(forAutoLayout: ())
    private var bodyLabel = UILabel(forAutoLayout: ())
    private var imageView = UIImageView(forAutoLayout: ())
    private var nextButton = UIButton(forAutoLayout: ())

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUIComponents()
        setupPureLayout()
    }
}

extension WelcomeStepViewController: UsesBasicUISetup {
    func setupUIContent() {
        titleLabel.text = "Welcome" // TODO: L10n
        imageView.image = Asset.Images.Onboarding.welcome.image
        bodyLabel.text = // TODO: L10n
            """
            With YOur TOp 100 (Yoto for short) you can add and manage your top 100 games!

            It's finaly time to get your game cabinet organised once and for all!
            """
        nextButton.setTitle("Next", for: .normal) // TODO: L10n
    }

    func setupUIStyling() {
        bodyLabel.numberOfLines = 0
        bodyLabel.textAlignment = .justified

        imageView.contentMode = .scaleAspectFit

        nextButton.setTitleColor(.blue, for: .normal)
    }

    func setupUIActions() {
        nextButton.setTapAction { [weak self] in
            self?.delegate?.stepForward()
        }
    }
}

extension WelcomeStepViewController: UsesPureLayout {
    func setupPureHierarchy() {
        [titleLabel, bodyLabel, imageView, nextButton]
            .forEach(view.addSubview(_:))
    }

    func setupPureViews() {
        titleLabel.autoPinEdge(toSuperviewSafeArea: .top, withInset: 40)
        titleLabel.autoAlignAxis(toSuperviewAxis: .vertical)
        titleLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)

        imageView.autoPinBelowView(titleLabel)
        bodyLabel.autoPinBelowView(imageView)

        [imageView, bodyLabel].forEach {
            $0.autoAlignAxis(.vertical, toSameAxisOf: titleLabel)
            $0.autoPinLeftRightSuperviewSafeArea(leftInset: DefaultInsets.Edges.standard,
                                                 rightInset: DefaultInsets.Edges.standard)
        }

        nextButton.autoPinBelowView(bodyLabel)
        nextButton.autoPinEdge(toSuperviewSafeArea: .bottom, withInset: 40)
        nextButton.autoAlignAxis(toSuperviewAxis: .vertical)
        nextButton.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}
