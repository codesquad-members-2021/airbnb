//
//  ViewController.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/17.
//

import UIKit

class LandingPageViewController: UIViewController {
    let searchBar = UISearchBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSearchBar()
    }
    
    func configureSearchBar() {
        searchBar.placeholder = "어디로 여행가세요?"
        navigationItem.titleView = searchBar
    }
}
