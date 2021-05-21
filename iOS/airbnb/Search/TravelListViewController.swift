//
//  PlaceListViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/20.
//

import UIKit

class TravelListViewController: UIViewController {
    
    
    @IBOutlet weak var travelList: UICollectionView!
    
    private var nearPlaceDataSource = NearPlaceDataSource()
    private let searchController = UISearchController(searchResultsController: nil)
    private let removeButton = UIBarButtonItem(title: "지우기",
                                               style: .plain,
                                               target: self,
                                               action: #selector(didTapRemoveButton))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = removeButton
        
        self.navigationItem.title = "숙소찾기"
        self.tabBarController?.tabBar.isHidden = true
        
        setSearchController()
        
        self.travelList.dataSource = nearPlaceDataSource
        self.travelList.delegate = self
        
        registerNib()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    @objc func didTapRemoveButton(){
        
    }
}
// MARK: - Functions
extension TravelListViewController {
    func setSearchController() {
        searchController.searchResultsUpdater = self
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        definesPresentationContext = true
        searchController.searchBar.delegate = self
        searchController.searchBar.sizeToFit()
        
        self.navigationItem.hidesSearchBarWhenScrolling = false
        self.navigationItem.searchController = searchController
    }
    func registerNib() {
        let nib = UINib(nibName: NearPlaceCell.nibName, bundle: nil)
        travelList?.register(nib, forCellWithReuseIdentifier: NearPlaceCell.reuseIdentifier)
        let headerNib = UINib(nibName: HeaderReusableView.nibName, bundle: nil)
        travelList?.register(headerNib, forCellWithReuseIdentifier: HeaderReusableView.reuseIdentifier)
    }
}
extension TravelListViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let viewController = FilterViewController.instantiate()
        viewController.modalPresentationStyle = .fullScreen
        self.navigationItem.backButtonTitle = "뒤로"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

extension TravelListViewController : UISearchBarDelegate {
    
}
extension TravelListViewController : UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
    }
}
extension TravelListViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let width: CGFloat = collectionView.frame.width
        let height: CGFloat = 64
        return CGSize(width: width, height: height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}

extension TravelListViewController : Storyboarded {
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Search", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
