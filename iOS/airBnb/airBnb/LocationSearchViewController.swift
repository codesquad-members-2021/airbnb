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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "숙소 찾기"
        navigationItem.leftBarButtonItem = close
        navigationItem.searchController = UISearchController(searchResultsController: nil)
    }
    
    @objc func closeSearchViewController(_ gesture: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}
