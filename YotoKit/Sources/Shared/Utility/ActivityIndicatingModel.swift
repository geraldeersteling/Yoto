//
//  ActivityIndicatingModel.swift
//  YotoKit
//
//  Created by Gerald Eersteling on 24/11/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwiftUtilities

public protocol ActivityIndicatingModel {
    var hasActivity: Driver<Bool> { get }
    var searchingIndicator: ActivityIndicator { get }
}

public extension ActivityIndicatingModel {
    var hasActivity: Driver<Bool> {
        return searchingIndicator.asDriver(onErrorJustReturn: false)
    }

    var searchingIndicator: ActivityIndicator {
        ActivityIndicator()
    }
}
