//
//  SearchViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

class SearchViewController : UIViewController {
    
    @IBOutlet weak var travelArea: UICollectionView!
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        self.navigationItem.searchController = searchController
        
        travelArea.delegate = self
        travelArea.dataSource = self
        
        registerNib()
    }
    func registerNib() {
        let nib = UINib(nibName: TravelAreaCell.nibName, bundle: nil)
        travelArea?.register(nib, forCellWithReuseIdentifier: TravelAreaCell.reuseIdentifier)
    }
}
extension SearchViewController : UICollectionViewDelegate {
    
}
extension SearchViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = travelArea.dequeueReusableCell(withReuseIdentifier: TravelAreaCell.reuseIdentifier, for: indexPath) as! TravelAreaCell
        return cell 
    }
}
extension SearchViewController : Storyboarded {
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Search", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
