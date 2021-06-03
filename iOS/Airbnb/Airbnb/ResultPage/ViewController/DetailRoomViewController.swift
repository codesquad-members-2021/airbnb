//
//  DetailRoomViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/06/04.
//

import UIKit

class DetailRoomViewController: UIViewController {

    static let reuseIdentifier = "DetailRoomViewController"
    static let nib = UINib(nibName: DetailRoomViewController.reuseIdentifier, bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavi()
    }
    
    private func configureNavi() {
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }


}
