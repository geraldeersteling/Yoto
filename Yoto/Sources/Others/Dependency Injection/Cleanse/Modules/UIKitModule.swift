//
//  UIKitModule.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/08/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Cleanse
import Foundation

struct UIKitModule: Module {
    static func configure(binder: Binder<Unscoped>) {
        binder.include(module: UIWindow.Module.self)
    }
}

extension UIWindow {
    struct Module: Cleanse.Module {
        static func configure(binder: Binder<Unscoped>) {
            binder
                .bind(UIWindow.self)
                .to { (rootViewController: TaggedProvider<UIViewController.Root>, windowScene: UIWindowScene) -> UIWindow in
                    let window = UIWindow(windowScene: windowScene)
                    window.rootViewController = rootViewController.get()
                    return window
                }
        }
    }
}

extension UIViewController {
    struct Root: Tag {
        public typealias Element = UIViewController
    }
}
