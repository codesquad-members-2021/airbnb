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
        let mainSearchViewControllerAction = MainSearchViewControllerAction(showDetailSearchView: showDetailSearchView)
        let mainSearchVC = MainSearchViewController.create(mainSearchViewControllerAction)
        searachSceneNavigationController = UINavigationController(rootViewController: mainSearchVC)
        let wishListVC = WishListViewController.create()
        let myreservationVC = MyReserVationViewController()
        
        tabBarController = FlowTabBarController(searachSceneNavigationController ?? UINavigationController(), wishListVC, myreservationVC)
        return tabBarController ?? UITabBarController()
    }
    
    func showDetailSearchView() {
        let detailSerchVC = DetailSearchViewController.create()
        searachSceneNavigationController?.pushViewController(detailSerchVC, animated: true)
        searachSceneNavigationController?.setNavigationBarHidden(false, animated: true)
    }
}
