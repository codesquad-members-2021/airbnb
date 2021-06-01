//
//  SceneDelegate.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    private var coordinator : MainCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let tabBarController = UITabBarController()
        coordinator = MainCoordinator(tabBarController: tabBarController)
        coordinator?.start()
        
        let appWindow = UIWindow(frame: windowScene.coordinateSpace.bounds)
        appWindow.windowScene = windowScene
        appWindow.rootViewController = tabBarController
        appWindow.makeKeyAndVisible()
        window = appWindow
    }

}

