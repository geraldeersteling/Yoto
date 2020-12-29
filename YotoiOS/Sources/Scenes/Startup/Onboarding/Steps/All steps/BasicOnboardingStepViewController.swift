//
//  BasicOnboardingStepViewController.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 22/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import PureLayout
import Resolver
import UIKit
import YotoKit
import YotoResources
import YotoUIKit

class BasicOnboardingStepViewController: UIViewController, OnboardingStep {
    var stepModel: OnboardingStepModel
    var delegate: OnboardingStepDelegate?
    var hasNext: Bool = false
    var hasPrevious: Bool = false

    private var titleLabel = UILabel(forAutoLayout: ())
    private var contentStackView = UIStackView(forAutoLayout: ())
    private var bodyLabel = UILabel(forAutoLayout: ())
    private var imageView = UIImageView(forAutoLayout: ())
    private var nextButton = UIButton(forAutoLayout: ())
    private var previousButton = UIButton(forAutoLayout: ())
    private var navigateButtonsStackView = UIStackView(forAutoLayout: ())

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(model: OnboardingStepModel) {
        stepModel = model
        super.init(nibName: nil, bundle: nil)
        
        titleLabel.text = model.title
        bodyLabel.text = model.body
        imageView.image = model.image
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupPureLayout()
    }
}

extension BasicOnboardingStepViewController: UsesBasicUISetup {
    func setupViewHierarchy() {
        [imageView, bodyLabel]
            .forEach(contentStackView.addArrangedSubview(_:))
        [previousButton, nextButton]
            .forEach(navigateButtonsStackView.addArrangedSubview(_:))
        [titleLabel, contentStackView, navigateButtonsStackView]
            .forEach(view.addSubview(_:))
    }

    func setupUIContent() {
        nextButton.setTitle("Next", for: .normal) // TODO: L10n
        previousButton.setTitle("Previous", for: .normal) // TODO: L10n
    }

    func setupUIStyling() {
        bodyLabel.numberOfLines = 0

        imageView.isHidden = imageView.image == nil
        imageView.contentMode = .scaleAspectFit

        contentStackView.axis = .vertical
        contentStackView.alignment = .center
        contentStackView.distribution = .fillProportionally
        contentStackView.spacing = DefaultInsets.BetweenComponents.large.rawValue

        nextButton.isHidden = !hasNext

        previousButton.isHidden = !hasPrevious

        [nextButton, previousButton]
            .forEach { $0.setTitleColor(Asset.Colors.primaryTeal.color, for: .normal) }

        navigateButtonsStackView.axis = .horizontal
        navigateButtonsStackView.alignment = .fill
        navigateButtonsStackView.spacing = DefaultInsets.BetweenComponents.large.rawValue
    }

    func setupUIActions() {
        nextButton.setTapAction { [weak self] in
            self?.delegate?.stepForward()
        }
        previousButton.setTapAction { [weak self] in
            self?.delegate?.stepBackward()
        }
    }
}

extension BasicOnboardingStepViewController: UsesPureLayout {
    func setupPureViews() {
        titleLabel.autoPinEdge(toSuperviewSafeArea: .top, withInset: DefaultInsets.Edges.large.rawValue)
        titleLabel.autoAlignAxis(toSuperviewAxis: .vertical)
        titleLabel.setContentHuggingPriority(.required, for: .vertical)

        bodyLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)

        imageView.autoPinLeftRightSuperviewSafeArea()

        contentStackView.autoPinBelowView(titleLabel, offset: DefaultInsets.BetweenComponents.extraLarge)
        contentStackView.autoPinLeftRightSuperviewSafeArea(leftInset: DefaultInsets.Edges.standard,
                                                           rightInset: DefaultInsets.Edges.standard)

        nextButton.setContentHuggingPriority(.required, for: .vertical)

        navigateButtonsStackView.autoPinBelowView(contentStackView, offset: DefaultInsets.BetweenComponents.extraLarge)
        navigateButtonsStackView.autoPinEdge(toSuperviewSafeArea: .bottom,
                                             withInset: DefaultInsets.Edges.large.rawValue)
        navigateButtonsStackView.autoAlignAxis(toSuperviewAxis: .vertical)
    }
}
