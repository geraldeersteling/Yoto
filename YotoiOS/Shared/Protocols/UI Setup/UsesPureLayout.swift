//
//  UsesPureLayout.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 17/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

protocol UsesPureLayout {
    func setupPureLayout()
    func setupPureHierarchy()
    func setupPureViews()
}

extension UsesPureLayout {
    func setupPureLayout() {
        setupPureHierarchy()
        setupPureViews()
    }
}
