//
//  Coordinator.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var tabBarController: UITabBarController { get set }

    func start()
}
