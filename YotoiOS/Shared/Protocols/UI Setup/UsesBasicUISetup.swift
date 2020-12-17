//
//  UsesBasicUISetup.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 17/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

protocol UsesBasicUISetup {
    func setupUIComponents()
    func setupUIContent()
    func setupUIStyling()
    func setupUIActions()
}

extension UsesBasicUISetup {
    func setupUIComponents() {
        setupUIContent()
        setupUIStyling()
        setupUIActions()
    }
    
    func setupUIActions() {
        // Default implementation does nothing
    }
}
