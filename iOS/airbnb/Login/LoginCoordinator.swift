//
//  LoginCoordinator.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/24.
//

import UIKit

class LoginCoordinator : NSObject, ChildCoordinator {
    
    var childCoordinators = [ChildCoordinator]()
    weak var parentCoordinator: MainCoordinator?
    var navigationController: UINavigationController
    
    override init(){
        self.navigationController = UINavigationController(rootViewController: LoginViewController.instantiate(name: StoryBoarded.Login.stringValue))
        navigationController.tabBarItem = UITabBarItem(title: "로그인", image: UIImage(named: "user"), tag: 2)
        super.init()
    }
    
    func start() {
        
    }
}
