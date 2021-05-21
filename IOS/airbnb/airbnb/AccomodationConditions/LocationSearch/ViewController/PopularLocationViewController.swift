//
//  PopularLocationViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/18.
//

import UIKit

final class PopularLocationViewController: UIViewController, Instantiable {

    static var reuseIdentifier: String { String(describing: self) }
    private let backButtonTitle = "위치 검색"
    
    @IBOutlet weak var popularLocationTableView: UITableView!
    private var popularLocationTableViewDataSource: PopularLocationTableViewDataSource!
    private var searchController: LocationSearchController!
    private var searchResultUpdater: LocationSearchResultUpdating!
    private var viewModel: PopularLocationConfigurable!

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
        let storyboard = self.storyboard ?? StoryboardFactory.create(.accomodationConditions)
        let searchResultViewController = ViewControllerFactory.create(from: storyboard, type: SearchResultTableViewController.self)
        searchController = LocationSearchController(searchResultsController: searchResultViewController)
        searchResultViewController.delegate = self
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    private func configurePopularLocationTableView() {
        viewModel.popularLocations { [weak self] result in
            do {
                let popularLocations = try result.get()
                let imagePaths = popularLocations.map{ $0.imagePath }
                self?.startDownloadingImages(from: imagePaths)
                self?.updateTableView(with: popularLocations)
            } catch {
                self?.alertError(error: error)
            }
        }
    }
    
    private func startDownloadingImages(from imagePaths: [String]) {
        var cachePaths = Array(repeating: "", count: imagePaths.count)
        imagePaths.enumerated().forEach { (index, imagePath) in
            self.viewModel.popularLocationImage(from: imagePath) { [weak self] cachePath in
                cachePaths[index] = cachePath
                self?.updateTableView(with: cachePaths)
            }
        }
    }
    
    private func updateTableView(with cachePaths: [String]) {
        popularLocationTableViewDataSource.updateImagePaths(with: cachePaths)
        reloadTableView()
    }
    
    private func reloadTableView() {
        DispatchQueue.main.async {
            self.popularLocationTableView.reloadData()
        }
    }
    
    private func updateTableView(with popularLocations: [PopularLocation]) {
        popularLocationTableViewDataSource.updateLocations(with: popularLocations)
        reloadTableView()
    }
    
    private func alertError(error: Error) {
        let customError = error as? CustomError ?? CustomError.unknown
        let alert = AlertFactory.create(error: customError)
        self.present(alert, animated: true, completion: nil)
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
        let cancelButtonItem = UIBarButtonItem(title: "지우기",
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
        let storyboard = self.storyboard ?? StoryboardFactory.create(.accomodationConditions)
        let nextViewController = ViewControllerFactory.create(from: storyboard, type: CalendarViewController.self)
        nextViewController.location = result
        self.navigationItem.backButtonTitle = backButtonTitle
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
}
