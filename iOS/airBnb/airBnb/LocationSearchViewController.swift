//
//  LocationSearchViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/19.
//

import UIKit

class LocationSearchViewController: UIViewController {
    
    private lazy var close: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(systemName: "chevron.backward") ,style: .plain, target: self, action: #selector(closeSearchViewController(_:)))
        return button
    }()
    
    private var searchController: UISearchController = {
        let controller = UISearchController(searchResultsController: nil)
        controller.obscuresBackgroundDuringPresentation = false
        controller.hidesNavigationBarDuringPresentation = false
        controller.automaticallyShowsCancelButton = false
        controller.searchBar.showsCancelButton = false
        controller.searchBar.searchTextField.clearButtonMode = .never
        controller.automaticallyShowsSearchResultsController = false
        controller.searchBar.placeholder = "어디로 여행가세요?"
        return controller
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "숙소 찾기"
        navigationItem.leftBarButtonItem = close
        navigationItem.searchController = searchController
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async {
            self.searchController.searchBar.becomeFirstResponder()
        }
    }
    
    @objc func closeSearchViewController(_ gesture: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
}
