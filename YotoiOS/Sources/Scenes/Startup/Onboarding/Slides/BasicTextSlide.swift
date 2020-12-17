//
//  BasicTextSlide.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 14/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit
import YotoUIKit

class BasicTextSlide: UIView, Slide {
    static var nibName: String { "BasicTextSlide" }
    var delegate: SlideDelegate?

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var bodyLabel: UILabel!

    func set(title: String, body: String?) {
        titleLabel.text = title
        bodyLabel.text = body
    }
}
