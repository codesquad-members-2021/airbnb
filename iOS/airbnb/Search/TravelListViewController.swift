//
//  PlaceListViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/20.
//

import UIKit

class TravelListViewController: UIViewController {
    
    @IBOutlet weak var travelList: UICollectionView!
    
    weak var coordinator : SearchCoodinator?
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
        
        self.travelList.dataSource = nearPlaceDataSource
        self.travelList.delegate = self
        
        setUpSearchController()
        registerNib()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationItem.searchController?.isActive = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.dismiss(animated: false, completion: nil)
    }
    
    @objc func didTapRemoveButton(){
        
    }
}
// MARK: - Functions
extension TravelListViewController {
    func setUpSearchController() {
        definesPresentationContext = true
        
        searchController.searchResultsUpdater = self
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        searchController.searchBar.sizeToFit()
        searchController.automaticallyShowsCancelButton = false
        searchController.obscuresBackgroundDuringPresentation = false
        
        self.navigationItem.hidesSearchBarWhenScrolling = false
        self.navigationItem.searchController = searchController
        self.navigationItem.searchController?.delegate = self
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
        coordinator?.choosePlace()
    }
}

extension TravelListViewController: UISearchControllerDelegate {
    func didPresentSearchController(_ searchController: UISearchController) {
        DispatchQueue.main.async {
            searchController.searchBar.becomeFirstResponder()
        }
    }
}

extension TravelListViewController : UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
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
