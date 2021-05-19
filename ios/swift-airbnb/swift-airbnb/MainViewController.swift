//
//  ViewController.swift
//  swift-airbnb
//
//  Created by sonjuhyeong on 2021/05/17.
//

import UIKit

class MainViewController: UIViewController {
    
    private let travelCollectionViewDataSource = TravelCollectionViewDataSource()
    private let recommendTravelCollectionViewDataSource = RecommendTravelCollectionViewDataSource()
    
    @IBOutlet weak var travelCollectionView: UICollectionView!
    @IBOutlet weak var recommendTravelCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDataSource()

    }
    
    func configureDataSource() {
        travelCollectionView.dataSource = travelCollectionViewDataSource
        travelCollectionView.register(TravelCollectionViewCell.nib, forCellWithReuseIdentifier: TravelCollectionViewCell.identifier)
        recommendTravelCollectionView.dataSource = recommendTravelCollectionViewDataSource
        recommendTravelCollectionView.register(RecommendTravelCollectionViewCell.nib, forCellWithReuseIdentifier: RecommendTravelCollectionViewCell.identifier)
    }


}

