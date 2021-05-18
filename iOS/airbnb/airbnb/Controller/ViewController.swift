//
//  ViewController.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tripPlaceCollectionView: UICollectionView!
    private var tripPlaceCollectionViewDataSource: TripPlaceCollectionViewDataSource = TripPlaceCollectionViewDataSource()
    
    @IBOutlet weak var recommendTripCollectionView: UICollectionView!
    private var recommendTripCollectionViewDataSource: RecommendTripCollectionViewDataSource = RecommendTripCollectionViewDataSource()
    
    override func viewDidLoad() {
        self.tripPlaceCollectionView.dataSource = tripPlaceCollectionViewDataSource
        self.recommendTripCollectionView.dataSource = recommendTripCollectionViewDataSource
        super.viewDidLoad()
    
    }
}
