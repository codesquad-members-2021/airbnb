//
//  WishListViewController.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/18.
//

import UIKit

class WishListViewController: UIViewController {

    static let storyboardName = "Main"
    static let storyboardID = "WishListViewController"
    
    static func create(with viewModel: WishListViewModel = WishListViewModel()) -> WishListViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(identifier: storyboardID) as? WishListViewController else {
            return WishListViewController()
        }
        vc.viewModel = viewModel
        return vc
    }
    
    var viewModel: WishListViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
