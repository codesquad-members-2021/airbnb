//
//  SearchViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

class SearchViewController : UIViewController {
    
    @IBOutlet weak var nearPlaceCollection: UICollectionView!
    @IBOutlet weak var themePlaceCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchBar = UISearchBar()
        searchBar.placeholder = "어디로 여행가세요?"
        self.navigationItem.titleView = searchBar
        
        searchBar.delegate = self
        nearPlaceCollection.delegate = self
        nearPlaceCollection.dataSource = self
        themePlaceCollection.delegate = self
        themePlaceCollection.dataSource = self
        
        registerNib()
    }
    func registerNib() {
        let nib = UINib(nibName: NearPlaceCell.nibName, bundle: nil)
        nearPlaceCollection?.register(nib, forCellWithReuseIdentifier: NearPlaceCell.reuseIdentifier)
        let headerNib = UINib(nibName: HeaderReusableView.nibName, bundle: nil)
        nearPlaceCollection?.register(headerNib, forCellWithReuseIdentifier: HeaderReusableView.reuseIdentifier)
        
        
        let specialNib = UINib(nibName: SpecialPlaceCell.nibName, bundle: nil)
        themePlaceCollection?.register(specialNib, forCellWithReuseIdentifier: SpecialPlaceCell.reuseIdentifier)
        themePlaceCollection?.register(headerNib, forCellWithReuseIdentifier: HeaderReusableView.reuseIdentifier)
    }
}
extension SearchViewController : UICollectionViewDelegate {
    
}
extension SearchViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == themePlaceCollection {
            return 4
        }
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == themePlaceCollection {
            let cell = themePlaceCollection.dequeueReusableCell(withReuseIdentifier: SpecialPlaceCell.reuseIdentifier, for: indexPath) as! SpecialPlaceCell
            return cell
        }
        let cell = nearPlaceCollection.dequeueReusableCell(withReuseIdentifier: NearPlaceCell.reuseIdentifier, for: indexPath) as! NearPlaceCell
        return cell 
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderReusableView.reuseIdentifier, for: indexPath)
            headerView.backgroundColor = UIColor.blue
            return headerView
        default:
            assert(false, "Unexpected element kind")
        }
    }
}
extension SearchViewController : UISearchBarDelegate {
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        let travelListViewController = TravelListViewController.instantiate()
        self.navigationController?.pushViewController(travelListViewController, animated: false)
        return false
    }
}
extension SearchViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let width: CGFloat = collectionView.frame.width
        let height: CGFloat = 28
        return CGSize(width: width, height: height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
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
