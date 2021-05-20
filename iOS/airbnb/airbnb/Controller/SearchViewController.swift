//
//  SearchViewController.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/18.
//

import UIKit

class SearchViewController: UITableViewController {
    
    private let searchController: UISearchController = UISearchController()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupSearchController()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setupSearchController() {
        self.navigationItem.searchController = searchController
        self.navigationItem.hidesSearchBarWhenScrolling = false
        self.searchController.automaticallyShowsCancelButton = false
        self.searchController.searchBar.placeholder = "어디로 여행가세요?"
    }
}
