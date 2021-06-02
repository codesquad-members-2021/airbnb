//
//  MainCoordinator.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

class MainCoordinator: NSObject, Coordinator {
    
    private var tabBarController: UITabBarController
    var childCoordinators = [ChildCoordinator]()
    
    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
        super.init()
        subscription(type: SearchCoodinator.self)
        subscription(type: WishListCoordinator.self)
        subscription(type: LoginCoordinator.self)
    }
    
    func subscription(type : ChildCoordinator.Type){
        let child = type.init()
        child.parentCoordinator = self
        childCoordinators.append(child)
    }
    
    func start() {
        childCoordinators.forEach{ 
            tabBarController.addChild($0.navigationController)
        }
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
