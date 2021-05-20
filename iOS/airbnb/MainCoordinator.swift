//
//  MainCoordinator.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var tabBarController: UITabBarController

    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
    }

    func start() {
    
        let search = UINavigationController(rootViewController: SearchViewController.instantiate())
        let wishList = UINavigationController(rootViewController: WishListViewController.instantiate())
        let login = UINavigationController(rootViewController: LoginViewController.instantiate())
        
        let searchItem = UITabBarItem(title: "검색", image: nil, tag: 0)
        searchItem.image = UIImage(named: "search")
        let wishItem = UITabBarItem(title: "위시리스트", image: nil, tag: 1)
        wishItem.image = UIImage(named: "heart")
        let loginItem = UITabBarItem(title: "로그인", image: nil, tag: 2)
        loginItem.image = UIImage(named: "user")
        
        search.tabBarItem = searchItem
        wishList.tabBarItem = wishItem
        login.tabBarItem = loginItem
        
        tabBarController.viewControllers = [search, wishList, login]
    }
}
