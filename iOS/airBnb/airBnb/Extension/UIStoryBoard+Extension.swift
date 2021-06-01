//
//  UIStoryBoard+Extension.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/26.
//

import UIKit

extension UIStoryboard {
    static func create<T: UIViewController>(identifier: T.Type, name storyBoardName: String) -> T {
        let storyBoard = UIStoryboard(name: storyBoardName, bundle: nil)
        guard let viewController = storyBoard.instantiateViewController(withIdentifier: storyBoardName) as? T else {
            return .init()
        }
        return viewController
    }
}

