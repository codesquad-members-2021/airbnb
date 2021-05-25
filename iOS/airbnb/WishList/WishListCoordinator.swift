//
//  WishListCoordinator.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/24.
//

import UIKit

class WishListCoordinator : NSObject, Coordinator {
    
    var childCoordinators = [Coordinator]()
    weak var parentCoordinator: MainCoordinator?
    var navigationController: UINavigationController
    
    override init(){
        self.navigationController = UINavigationController(rootViewController: WishListViewController.instantiate())
        navigationController.tabBarItem = UITabBarItem(title: "위시리스트", image: UIImage(named: "heart"), tag: 1)
        super.init()
    }
    func start() {
        
    }

}
