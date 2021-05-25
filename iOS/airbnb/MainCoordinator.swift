//
//  MainCoordinator.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

class MainCoordinator: NSObject, Coordinator {
    
    var tabBarController: UITabBarController
    var childCoordinators = [Coordinator]()
    weak var parentCoordinator: MainCoordinator?
    
    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
        super.init()
        subscription(type: SearchCoodinator.self)
        subscription(type: WishListCoordinator.self)
        subscription(type: LoginCoordinator.self)
    }
    func subscription(type : Coordinator.Type){
        let child = type.init()
        child.parentCoordinator = self
        childCoordinators.append(child)
    }
    func start() {
        childCoordinators.forEach{ coordinator in
            if let search = coordinator as? SearchCoodinator {
                tabBarController.addChild(search.navigationController)
            }
            else if let wish = coordinator as? WishListCoordinator {
                tabBarController.addChild(wish.navigationController)
            }
            else if let login = coordinator as? LoginCoordinator {
                tabBarController.addChild(login.navigationController)
            }
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
