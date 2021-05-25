//
//  ViewController.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/17.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
   
    @IBOutlet weak var tripPlaceCollectionView: UICollectionView!
    private var tripPlaceCollectionViewDataSource: TripPlaceCollectionViewDataSource = TripPlaceCollectionViewDataSource()
    
    @IBOutlet weak var recommendTripCollectionView: UICollectionView!
    private var recommendTripCollectionViewDataSource: RecommendTripCollectionViewDataSource = RecommendTripCollectionViewDataSource()
    
    private var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        self.searchBar = UISearchBar.init(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 35))
        self.tripPlaceCollectionView.dataSource = tripPlaceCollectionViewDataSource
        self.recommendTripCollectionView.dataSource = recommendTripCollectionViewDataSource
        super.viewDidLoad()
        setupSearchBar()
    }
    
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        self.performSegue(withIdentifier: "result", sender: nil)
        return false
    }
    
    private func setupSearchBar() {
        self.navigationItem.titleView = self.searchBar
        self.searchBar.placeholder = "어디로 여행가세요?"
        self.searchBar.delegate = self
    }
}
