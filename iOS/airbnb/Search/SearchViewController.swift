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
    
    var nearPlaceDataSource = NearPlaceDataSource()
    var themePlaceDataSource = ThemePlaceDataSource()
    
    // MARK: - DataSource
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchBar = UISearchBar()
        searchBar.placeholder = "어디로 여행가세요?"
        self.navigationItem.titleView = searchBar
        
        searchBar.delegate = self
        nearPlaceCollection.dataSource = nearPlaceDataSource
        themePlaceCollection.dataSource = themePlaceDataSource
        registerNib()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    func registerNib() {
        let nib = UINib(nibName: NearPlaceCell.nibName, bundle: nil)
        nearPlaceCollection?.register(nib, forCellWithReuseIdentifier: NearPlaceCell.reuseIdentifier)
        let headerNib = UINib(nibName: HeaderReusableView.nibName, bundle: nil)
        nearPlaceCollection?.register(headerNib, forCellWithReuseIdentifier: HeaderReusableView.reuseIdentifier)
        
        let specialNib = UINib(nibName: ThemePlaceCell.nibName, bundle: nil)
        themePlaceCollection?.register(specialNib, forCellWithReuseIdentifier: ThemePlaceCell.reuseIdentifier)
        themePlaceCollection?.register(headerNib, forCellWithReuseIdentifier: HeaderReusableView.reuseIdentifier)
    }
}
extension SearchViewController : UISearchBarDelegate {
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        let travelListViewController = TravelListViewController.instantiate()
        self.navigationItem.backButtonTitle = "뒤로"
        self.navigationController?.pushViewController(travelListViewController, animated: true)
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
