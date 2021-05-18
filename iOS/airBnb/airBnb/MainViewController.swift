//
//  ViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/18.
//

import UIKit

class MainViewController: UIViewController {

    private lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "어디로 여행가세요?"
        searchBar.searchTextField.isEnabled = false
        searchBar.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(moveSearchViewController(_:))))
        return searchBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.titleView = searchBar
    }

    @objc func moveSearchViewController(_ UITapGestureReconizer: UITapGestureRecognizer) {
    }
}
