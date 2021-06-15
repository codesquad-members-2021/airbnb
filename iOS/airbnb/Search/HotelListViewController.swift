//
//  HotelListViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/04.
//

import UIKit

class HotelListViewController: UIViewController {

    weak var coordinator: SearchCoodinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "숙소찾기"
    }

}
