//
//  Coordinator.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

protocol Coordinator : NSObject {
    var childCoordinators: [ChildCoordinator] { get set }
    
    func start()
}

protocol ChildCoordinator : Coordinator {
    var parentCoordinator: MainCoordinator? { get set }
    var navigationController : UINavigationController { get set }
}
