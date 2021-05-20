//
//  PlaceListViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/20.
//

import UIKit

class TravelListViewController: UIViewController {

    @IBOutlet weak var travelList: UICollectionView!
    
    private let searchController = UISearchController(searchResultsController: nil)
    private let removeButton = UIBarButtonItem(title: "지우기",
                                               style: .plain,
                                               target: self,
                                               action: #selector(didTapRemoveButton))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "숙소찾기"
        
        self.navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        navigationItem.rightBarButtonItem = removeButton
    }
 
    @objc func didTapRemoveButton(){
        
    }
}
extension TravelListViewController : UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        print(text)
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
