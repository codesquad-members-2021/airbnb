//
//  PopularLocationViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/18.
//

import UIKit

class PopularLocationViewController: UIViewController {

    @IBOutlet weak var popularLocationTableView: UITableView!
    private var popularLocationTableViewDataSource: PopularLocationTableViewDataSource!
    private var searchController: LocationSearchController!
    private var searchResultUpdater: LocationSearchResultUpdating!
    
    private var viewModel: PopularLocationViewModel!
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popularLocationTableViewDataSource = PopularLocationTableViewDataSource()
        popularLocationTableView.dataSource = popularLocationTableViewDataSource
        
        setNavigationSearchController()
        
        searchResultUpdater = LocationSearchResultUpdating()
        searchController.searchResultsUpdater = searchResultUpdater
        searchController.searchBar.delegate = self
        
        viewModel = PopularLocationViewModel()
        configurePopularLocationTableView()
    }
    
    private func setNavigationSearchController() {
        let searchResultViewControllerID = SearchResultTableViewController.reuseIdentifier
        
        //controller 팩토리 생성하여 옵셔널 처리 맡겨버리기
        let searchResultViewController = self.storyboard?.instantiateViewController(withIdentifier: searchResultViewControllerID) as? SearchResultTableViewController ?? SearchResultTableViewController()
        searchResultViewController.viewModel = SearchResultViewModel()
        searchController = LocationSearchController(searchResultsController: searchResultViewController)
        searchResultViewController.delegate = self
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    private func configurePopularLocationTableView() {
        viewModel.popularLocations { popularLocations in
            self.popularLocationTableViewDataSource.updateLocations(with: popularLocations)
            self.updateTableView()
        }
    }
    
    private func updateTableView() {
        DispatchQueue.main.async {
            self.popularLocationTableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        searchBarCursurOn()
    }
    
    private func searchBarCursurOn() {
        DispatchQueue.main.async {
            self.searchController.searchBar.becomeFirstResponder()
        }
    }
    
    @objc private func searchCanceled(_ sender: UIBarButtonItem) {
        inactiveSearchController()
        unsetCancelBarButton()
    }
    
    private func inactiveSearchController() {
        searchController.isActive = false
    }
    
    private func unsetCancelBarButton() {
        navigationItem.setRightBarButton(nil, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        inactiveSearchController()
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

extension PopularLocationViewController: SearchResultDelegate {
    
    func didSelect(result: LocationSearchResult) {
        pushNextViewController(with: result)
        inactiveSearchController()
        unsetCancelBarButton()
    }
    
    private func pushNextViewController(with result: LocationSearchResult) {
        let nextViewControllerID = CalendarViewController.reuseIdentifier
        let nextViewController = storyboard?.instantiateViewController(identifier: nextViewControllerID) as? CalendarViewController ?? CalendarViewController()
        nextViewController.location = result
        self.navigationItem.backButtonTitle = "Back"
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
}
