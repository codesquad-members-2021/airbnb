//
//  SearchViewController.swift
//  swift-airbnb
//
//  Created by sonjuhyeong on 2021/05/19.
//

import UIKit

class SearchViewController: UIViewController {

    private var travelCollectionViewDataSource = TravelCollectionViewDataSource()
    private var controller = UISearchController()
    @IBOutlet weak var travelCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureNavigationItem()
        configureDataSource()
    }
    
    func configureNavigationItem()  {
        self.navigationItem.searchController = controller
        controller.hidesNavigationBarDuringPresentation = false
        self.navigationItem.backButtonTitle = "뒤로"
        self.navigationItem.title = "숙소 찾기"
    }
    
    func configureDataSource() {
        travelCollectionView.dataSource = travelCollectionViewDataSource
        travelCollectionView.register(TravelCollectionViewCell.nib, forCellWithReuseIdentifier: TravelCollectionViewCell.identifier)
    }
    
}
