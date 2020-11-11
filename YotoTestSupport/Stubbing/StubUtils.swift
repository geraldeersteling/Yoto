//
//  StubUtils.swift
//  YotoTests
//
//  Created by Gerald Eersteling on 13/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import Moya
@testable import YotoKit

// MARK: - Stubbing targets -

func stubIGDBTargetPath(_ target: TargetType,
                        prefixWithSlash: Bool = true) -> String {
    return "\(prefixWithSlash ? "/" : "")\(IGDB.apiVersion)/\(target.path)"
}

func stubTargetPath(_ target: TargetType,
                    prefixWithSlash: Bool = true) -> String {
    return "\(prefixWithSlash ? "/" : "")\(target.path)"
}
