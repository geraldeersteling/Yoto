//
//  Slide.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 14/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit

protocol Slide: UIView {
    static var nibName: String { get }
    var delegate: SlideDelegate? { get set }
}

extension Slide {
    static func loadFromBundle(_ someBundle: Bundle? = nil, owner: Any? = nil) -> Self {
        let bundle = someBundle ?? YotoiOSInfo.shared.bundle

        guard let slide = bundle.loadNibNamed(nibName, owner: owner, options: nil)?.first as? Self
        else { fatalError("Tried to load a nib named: \(nibName) as a Slide, but this failed!") }

        return slide
    }
}
