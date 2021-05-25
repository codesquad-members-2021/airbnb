//
//  Coordinator.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

protocol Coordinator : NSObject {
    var childCoordinators: [Coordinator] { get set }
    var parentCoordinator: MainCoordinator? { get set }
    
    func start()
}
