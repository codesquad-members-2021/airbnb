//
//  PopularLocationViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/18.
//

import UIKit

class PopularLocationViewController: UIViewController {

    @IBOutlet weak var popularLocationTableView: UITableView!
    private var searchController: LocationSearchController!
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationSearchController()
        searchController.searchResultsUpdater = self
        popularLocationTableView.dataSource = self
    }
    
    private func setNavigationSearchController() {
        searchController = LocationSearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }

}

extension PopularLocationViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
}

extension PopularLocationViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = PopularLocationTableViewCell.reuseIdentifier
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? PopularLocationTableViewCell ?? PopularLocationTableViewCell()
        return cell
    }
    
}
