//
//  MainCoordinator.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let tabBarController = UITabBarController()
        
        let search = SearchViewController.instantiate()
        search.tabBarItem = UITabBarItem(title: "검색", image: UIImage(named: "search"), tag: 0)
        let wishList = WishListViewController.instantiate()
        wishList.tabBarItem = UITabBarItem(title: "위시리스트", image: UIImage(named: "heart"), tag: 1)
        let login = LoginViewController.instantiate()
        login.tabBarItem = UITabBarItem(title: "로그인", image: UIImage(named: "user"), tag: 2)
        
        self.navigationController.title = "title"
        tabBarController.viewControllers = [search, wishList, login]
        navigationController.pushViewController(tabBarController, animated: false)
    }
}
