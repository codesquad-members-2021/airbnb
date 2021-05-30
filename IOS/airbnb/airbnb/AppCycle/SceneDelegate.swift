//
//  SceneDelegate.swift
//  airbnb
//
//  Created by Song on 2021/05/17.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    private let homeCreator = HomeDIContainer()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = scene as? UIWindowScene else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
        let homeNavigationController = homeCreator.makeHomeNavigationController()
        window.rootViewController = homeNavigationController
        
        let tabBarController = homeCreator.makeHomeTabBarController()
        homeNavigationController.pushViewController(tabBarController, animated: true)
        
        self.window = window
        window.makeKeyAndVisible()
    }
    
}
