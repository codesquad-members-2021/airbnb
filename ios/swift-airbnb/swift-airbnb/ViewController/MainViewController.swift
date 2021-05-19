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
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func configureDataSource() {
        travelCollectionView.dataSource = travelCollectionViewDataSource
        travelCollectionView.register(TravelCollectionViewCell.nib, forCellWithReuseIdentifier: TravelCollectionViewCell.identifier)
        recommendTravelCollectionView.dataSource = recommendTravelCollectionViewDataSource
        recommendTravelCollectionView.register(RecommendTravelCollectionViewCell.nib, forCellWithReuseIdentifier: RecommendTravelCollectionViewCell.identifier)
    }

    @IBAction func pressedSearchButton(_ sender: UIButton) {
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "SearchViewController") as! SearchViewController
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.pushViewController(viewController, animated: true)
    }

    
}

