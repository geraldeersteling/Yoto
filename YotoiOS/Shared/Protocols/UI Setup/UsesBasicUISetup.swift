//
//  UsesBasicUISetup.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 17/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

protocol UsesBasicUISetup {
    func setupUI()
    func setupViewHierarchy()
    func setupUIContent()
    func setupUIStyling()
    func setupUIActions()
}

extension UsesBasicUISetup {
    func setupUI() {
        setupViewHierarchy()
        setupUIContent()
        setupUIStyling()
        setupUIActions()
    }

    func setupViewHierarchy() {
        // Default implementation does nothing
    }

    func setupUIActions() {
        // Default implementation does nothing
    }
}
