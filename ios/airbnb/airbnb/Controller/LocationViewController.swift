//
//  LocationViewController.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/17.
//

import UIKit

final class LocationViewController: UIViewController {
    
    private let searchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationItem()
        configureSearchBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    private func configureNavigationItem() {
        navigationController?.navigationItem.backBarButtonItem?.title = "뒤로"
        self.navigationItem.title = "숙소 찾기"
        let cancel = UIBarButtonItem(title: "지우기", style: .done, target: self, action: #selector(tappedDeleteBarButton))
        self.navigationItem.rightBarButtonItem = cancel
    }
    
    private func configureSearchBar() {
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.automaticallyShowsCancelButton = false
        self.navigationItem.searchController = searchController
    }
    
    @objc func tappedDeleteBarButton() {
        
    }
}
