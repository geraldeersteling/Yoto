//
//  BasicImageSlide.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 14/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import UIKit
import PureLayout

class BasicImageSlide: UIView, Slide {
    static var nibName: String { "BasicImageSlide" }
    var delegate: SlideDelegate?

    let imageView = UIImageView(forAutoLayout: ())
    let titleLabel = UILabel(forAutoLayout: ())
    let bodyLabel = UILabel(forAutoLayout: ())

    func set(title: String, body: String?, image: UIImage) {
        titleLabel.text = title
        bodyLabel.text = body
        imageView.image = image

        configureSlide()
    }

    func configureSlide() {
        configureForAutoLayout()

        addSubview(imageView)
        addSubview(titleLabel)
        addSubview(bodyLabel)

        imageView.autoPinEdge(toSuperviewEdge: .top)
        imageView.autoPinEdge(toSuperviewEdge: .leading)
        imageView.autoPinEdge(toSuperviewEdge: .trailing)

        titleLabel.autoPinEdge(.top, to: .bottom, of: imageView, withOffset: 40, relation: .equal)
        
        bodyLabel.autoPinEdge(.top, to: .bottom, of: titleLabel, withOffset: 12, relation: .equal)
        bodyLabel.autoPinEdge(toSuperviewEdge: .bottom, withInset: 20)
    }
}
