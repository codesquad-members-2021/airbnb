//
//  RoomInformationViewController.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/24.
//

import UIKit

class RoomInformationViewController: UIViewController {
    @IBOutlet weak var roomInformationCollectionView: UICollectionView!
    
    private var roomInformationViewDataSource = RoomInformationViewDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = false
        self.navigationItem.title = "숙소찾기"
        self.roomInformationCollectionView.dataSource = roomInformationViewDataSource
    }

}
