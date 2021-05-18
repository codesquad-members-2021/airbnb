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
        let search = SearchViewController.instantiate()
        let wishList = WishListViewController.instantiate()
        let login = LoginViewController.instantiate()
        tabBarController.viewControllers = [search, wishList, login]
    }
}
