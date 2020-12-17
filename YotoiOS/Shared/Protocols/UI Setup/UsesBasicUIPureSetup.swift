//
//  UsesBasicUIPureSetup.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 17/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

protocol UsesBasicUIPureSetup: UsesBasicUISetup, UsesPureLayout {
    func setupUI()
}

extension UsesBasicUIPureSetup {
    func setupUI() {
        setupUIComponents()
        setupPureLayout()
    }
}
