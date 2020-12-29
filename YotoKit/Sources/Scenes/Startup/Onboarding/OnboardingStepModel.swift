//
//  OnboardingStepModel.swift
//  YotoKit
//
//  Created by Gerald Eersteling on 29/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver

public class OnboardingStepModel {
    public var title: String
    public var body: String

    #if os(iOS)

    #endif

    required public init(title: String, body: String) {
        self.title = title
        self.body = body
    }

    #if os(iOS)
    public var image: UIImage?
    
    public convenience init(title: String, body: String, image: UIImage?) {
        self.init(title: title, body: body)
        self.image = image
    }
    #endif
}
