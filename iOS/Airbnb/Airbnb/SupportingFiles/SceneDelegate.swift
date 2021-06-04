//
//  SceneDelegate.swift
//  Airbnb
//
//  Created by Lia on 2021/05/18.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
                self.window = UIWindow(windowScene: windowScene)

                let navigationController = UINavigationController.init(rootViewController: MapViewController())
                self.window?.rootViewController = navigationController

                self.window?.rootViewController = navigationController
                self.window?.makeKeyAndVisible()
        configureTabBar()
    }

    func configureTabBar() {
        guard let tabBarController = self.window?.rootViewController as? UITabBarController else { return }
        
        tabBarController.tabBar.tintColor = .black
        tabBarController.tabBar.barTintColor = .systemGray6
        
        if let barItems = tabBarController.tabBar.items {
            barItems[0].image = UIImage(systemName: "magnifyingglass")
            barItems[1].image = UIImage(systemName: "heart")
            barItems[2].image = UIImage(systemName: "person")
            
            barItems[0].title = "검색"
            barItems[1].title = "위시리스트"
            barItems[2].title = "로그인"
            
        }
    }
    
}

