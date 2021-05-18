//
//  FlowTabBarController.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/18.
//

import UIKit

class FlowTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    convenience init(_ mainSearchVC: MainSearchViewController, _ wishListVC: WishListViewController, _ myReservationVC: MyReserVationViewController) {
        self.init()
        let searchBarItem = UITabBarItem(title: "검색", image: UIImage(systemName: "magnifyingglass"), selectedImage: nil)
        let wishListBarItem = UITabBarItem(title: "위시리스트", image: UIImage(systemName: "heart"), selectedImage: nil)
        let reservationBarItem = UITabBarItem(title: "예약", image: UIImage(systemName: "person"), selectedImage: nil)

        mainSearchVC.tabBarItem = searchBarItem
        wishListVC.tabBarItem = wishListBarItem
        myReservationVC.tabBarItem = reservationBarItem
        
        viewControllers = [mainSearchVC, wishListVC, myReservationVC]
    }
}
