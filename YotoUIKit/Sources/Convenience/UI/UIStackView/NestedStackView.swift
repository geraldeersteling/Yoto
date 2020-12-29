//
//  NestedStackView.swift
//  YotoUIKit
//
//  Created by Gerald Eersteling on 22/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit

public class NestedStackView: UIView {
    private let stackView = UIStackView()

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(stackView)

        addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat: "H:|-0@999-[stackView]-0@999-|",
                                           options: [],
                                           metrics: nil,
                                           views: ["stackView": stackView])
        )
        addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat: "V:|-0@999-[stackView]-0@999-|",
                                           options: [],
                                           metrics: nil,
                                           views: ["stackView": stackView])
        )
    }

    public convenience init() {
        self.init(frame: .zero)
    }
}

public extension NestedStackView {
    func addArrangedSubview(_ view: UIView) {
        stackView.addArrangedSubview(view)
    }

    func removeArrangedSubview(_ view: UIView) {
        stackView.removeArrangedSubview(view)
    }

    var axis: NSLayoutConstraint.Axis {
        get { return stackView.axis }
        set { stackView.axis = newValue }
    }

    var distribution: UIStackView.Distribution {
        get { return stackView.distribution }
        set { stackView.distribution = newValue }
    }

    var alignment: UIStackView.Alignment {
        get { return stackView.alignment }
        set { stackView.alignment = newValue }
    }

    var spacing: CGFloat {
        get { return stackView.spacing }
        set { stackView.spacing = newValue }
    }
}
