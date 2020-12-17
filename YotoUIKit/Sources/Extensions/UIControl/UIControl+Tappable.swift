//
//  UIControl+Tappable.swift
//  YotoUIKit
//
//  Created by Gerald Eersteling on 17/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit

extension UIControl {
    public typealias TapAction = (() -> Void)

    enum AssociatedHandles {
        static var tapAction = "yoto.tapAction"
    }

    fileprivate var tapAction: TapAction? {
        get {
            return objc_getAssociatedObject(self, &AssociatedHandles.tapAction) as? TapAction
        }
        set {
            objc_setAssociatedObject(self, &AssociatedHandles.tapAction, newValue ?? {},
                                     .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    public func setTapAction(forEvent event: Event = .touchUpInside, _ action: TapAction?) {
        defer { tapAction = action }

        if action != nil {
            addTarget(self, action: #selector(executeTapAction), for: event)
        } else {
            removeTarget(self, action: #selector(executeTapAction), for: event)
        }
    }

    @objc private func executeTapAction() {
        guard let action = tapAction
        else { return }

        action()
    }
}
