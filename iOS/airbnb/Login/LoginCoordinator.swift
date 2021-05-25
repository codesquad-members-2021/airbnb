//
//  LoginCoordinator.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/24.
//

import UIKit

class LoginCoordinator : NSObject, Coordinator {
    
    var childCoordinators = [Coordinator]()
    weak var parentCoordinator: MainCoordinator?
    var navigationController: UINavigationController
    
    override init(){
        self.navigationController = UINavigationController(rootViewController: LoginViewController.instantiate())
        navigationController.tabBarItem = UITabBarItem(title: "로그인", image: UIImage(named: "user"), tag: 2)
        super.init()
    }
    func start() {
        
    }
}
