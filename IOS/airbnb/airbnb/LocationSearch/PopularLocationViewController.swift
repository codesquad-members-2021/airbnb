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
        searchController.searchBar.delegate = self
        popularLocationTableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async {
            self.searchController.searchBar.becomeFirstResponder()
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        inactiveSearchController()
    }
    
    private func inactiveSearchController() {
        searchController.isActive = false
    }
    
    private func setNavigationSearchController() {
        let searchResultViewControllerID = SearchResultTableViewController.reuseIdentifier
        let searchResultViewController = self.storyboard?.instantiateViewController(withIdentifier: searchResultViewControllerID) as? SearchResultTableViewController
        searchController = LocationSearchController(searchResultsController: searchResultViewController)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }

    @objc private func searchCanceled(_ sender: UIBarButtonItem) {
        inactiveSearchController()
        unsetCancelBarButton()
    }
    
    private func unsetCancelBarButton() {
        navigationItem.setRightBarButton(nil, animated: true)
    }

}

extension PopularLocationViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        setCancelBarButton()
    }
    
    private func setCancelBarButton() {
        guard navigationItem.rightBarButtonItem == nil else { return }
        let cancelButtonItem = UIBarButtonItem(title: "Cancel",
                                               style: .done,
                                               target: self,
                                               action: #selector(searchCanceled(_:)))
        navigationItem.setRightBarButton(cancelButtonItem, animated: true)
    }
    
}

extension PopularLocationViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let resultController = searchController.searchResultsController as? SearchResultTableViewController else { return }
        
        let result = searchController.searchBar.searchTextField.text ?? ""
        resultController.updateSearchResult(with: Array(repeating: result, count: 10))
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
