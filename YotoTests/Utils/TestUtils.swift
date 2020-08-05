//
//  TestUtils.swift
//  YotoTests
//
//  Created by Gerald Eersteling on 04/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Moya

// MARK: - Stubbing targets -

func stubTargetPath(_ target: TargetType,
                    prefixWithSlash: Bool = true) -> String {
    return "\(prefixWithSlash ? "/" : "")\(target.path)"
}
