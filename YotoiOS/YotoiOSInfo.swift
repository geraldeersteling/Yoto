//
//  YotoiOSInfo.swift
//  YotoiOS
//
//  Created by Gerald Eersteling on 14/12/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

public class YotoiOSInfo {
    public static let shared = YotoiOSInfo()

    public let bundle: Bundle

    fileprivate init() {
        bundle = Bundle(for: YotoiOSInfo.self)
    }
}
