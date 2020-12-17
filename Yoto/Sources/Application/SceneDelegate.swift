//
//  SceneDelegate.swift
//  Yoto
//
//  Created by Gerald Eersteling on 10/07/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Resolver
import UIKit
import YotoiOS

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene)
        else { return }

        let window = UIWindow(windowScene: windowScene)
        self.window = window
        appCoordinator = Resolver.resolve(AppCoordinator.self, args: window)
        appCoordinator?.start()
    }
}
