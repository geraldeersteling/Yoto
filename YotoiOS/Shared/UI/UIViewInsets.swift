//
//  UIViewInsets.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 17/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit

protocol UIViewInset {
    var value: CGFloat { get }
}

enum DefaultInsets: UIViewInset {
    enum Edges: CGFloat, UIViewInset {
        case standard = 20
        case large = 40
    }
    enum BetweenComponents: CGFloat, UIViewInset {
        case standard = 12
        case large = 20
        case extraLarge = 40
    }

    case custom(inset: CGFloat)
    case zero
}

extension DefaultInsets {
    var value: CGFloat {
        switch self {
            case let .custom(inset):
                return inset
            case .zero:
                return 0
        }
    }
}

extension DefaultInsets.Edges {
    var value: CGFloat {
        self.rawValue
    }
}

extension DefaultInsets.BetweenComponents {
    var value: CGFloat {
        self.rawValue
    }
}
