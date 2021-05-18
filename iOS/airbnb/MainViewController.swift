//
//  ViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

class MainViewController: UIViewController, Storyboarded {

    let searchController = UISearchController(searchResultsController: SearchViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        navigationItem.searchController = searchController
    }
    
}

extension MainViewController : UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        print(text)
    }
}
