//
//  WishListViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

class WishListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}
extension WishListViewController : Storyboarded {
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "WishList", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
