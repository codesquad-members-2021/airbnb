//
//  ViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/17.
//

import UIKit

class MainViewController: UIViewController {

    private var searchBar: LocationSearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSearchBar()
    }
    
    private func setSearchBar() {
        searchBar = LocationSearchBar()
        searchBar.delegate = self
        tabBarController?.navigationItem.titleView = searchBar
    }
    
}

extension MainViewController: UISearchBarDelegate {
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
        pushNextViewController()
    }
    
    private func pushNextViewController() {
        let nextStoryBoard = StoryboardFactory.create(.accomodationConditions)
        let nextViewController = ViewControllerFactory.create(from: nextStoryBoard, type: PopularLocationViewController.self)
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
}
