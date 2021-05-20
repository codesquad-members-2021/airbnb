//
//  MainSearchViewController.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/18.
//

import UIKit

class MainSearchViewController: UIViewController {
    private var searchController = UISearchController()
    private var bestDestinationsTableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        self.title = "숙소 찾기"
        
        configureSearchController()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        configureBestDestinationsTableView()
    }
    
    func configureSearchController() {
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.searchTextField.placeholder = "어디로 여행가세요?"
        searchController.searchBar.returnKeyType = .go
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.automaticallyShowsCancelButton = false
        navigationItem.searchController = searchController
    }
    
    func configureBestDestinationsTableView() {
        bestDestinationsTableView = UITableView(frame: self.view.frame)
        self.view.addSubview(bestDestinationsTableView)
        self.bestDestinationsTableView.register(BestDestinationTableViewCell.nib(),
                                                forCellReuseIdentifier: BestDestinationTableViewCell.reuseIdentifier)
        bestDestinationsTableView.rowHeight = 80.0
        bestDestinationsTableView.separatorStyle = .none
    }
}
