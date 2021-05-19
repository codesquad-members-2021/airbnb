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
        let nextStoryBoard = UIStoryboard(name: "LocationSearch", bundle: .main)
        let nextViewControllerID = PopularLocationViewController.reuseIdentifier
        let nextViewController = nextStoryBoard.instantiateViewController(identifier: nextViewControllerID) as? PopularLocationViewController ?? PopularLocationViewController()
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
}
