//
//  ViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationSearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationSearchBar.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
}

extension ViewController: UISearchBarDelegate {
    
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
