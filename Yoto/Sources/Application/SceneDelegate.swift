//
//  SceneDelegate.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene)
        else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = Resolver.resolve(MainTabbarController.self)

        self.window = window
        window.makeKeyAndVisible()
    }
}
