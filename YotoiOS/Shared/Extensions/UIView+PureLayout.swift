//
//  UIView+PureLayout.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 17/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit
import PureLayout


extension UIView {


    @discardableResult
    func autoPinAboveView(_ view: UIView,
                          offset: UIViewInset = DefaultInsets.BetweenComponents.standard,
                          relation: NSLayoutConstraint.Relation = .equal) -> NSLayoutConstraint {
        autoPinEdge(.bottom, to: .top, of: view, withOffset: offset.value, relation: relation)
    }

    @discardableResult
    func autoPinBelowView(_ view: UIView,
                          offset: UIViewInset = DefaultInsets.BetweenComponents.standard,
                          relation: NSLayoutConstraint.Relation = .equal) -> NSLayoutConstraint {
        autoPinEdge(.top, to: .bottom, of: view, withOffset: offset.value, relation: relation)
    }

    @discardableResult
    func autoPinLeftRightSuperviewSafeArea(leftInset: UIViewInset = DefaultInsets.zero,
                                           leftRelation: NSLayoutConstraint.Relation = .equal,
                                           rightInset: UIViewInset = DefaultInsets.zero,
                                           rightRelation: NSLayoutConstraint.Relation = .equal) -> [NSLayoutConstraint] {
        [
            autoPinEdge(toSuperviewSafeArea: .leading, withInset: leftInset.value, relation: leftRelation),
            autoPinEdge(toSuperviewSafeArea: .trailing, withInset: rightInset.value, relation: rightRelation)
        ]
    }
}
