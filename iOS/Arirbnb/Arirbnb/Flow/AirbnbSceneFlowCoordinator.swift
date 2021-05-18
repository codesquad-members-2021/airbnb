//
//  AirbnbSceneFlowCoordinator.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/18.
//

import UIKit

public class AirbnbSceneFlowCoordinator {
    private var tabBarController: UITabBarController?
    private var searachSceneNavigationController: UINavigationController?

    func start() -> UITabBarController {
        let mainSearchVC = MainSearchViewController.create()
        searachSceneNavigationController = UINavigationController(rootViewController: mainSearchVC)
        let wishListVC = WishListViewController.create()
        let myreservationVC = MyReserVationViewController()
        
        tabBarController = FlowTabBarController(mainSearchVC, wishListVC, myreservationVC)
        return tabBarController ?? UITabBarController()
    }
}
