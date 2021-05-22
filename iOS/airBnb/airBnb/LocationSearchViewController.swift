//
//  LocationSearchViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/19.
//

import UIKit

class LocationSearchViewController: UITableViewController {
    
    var cities = ["서울","광주","의정부시","수원시","대구","울산","부천시"]
    var resultCities: [String] = []
    
    private lazy var deleteText: UIBarButtonItem = {
        let button = UIBarButtonItem(title: "지우기" ,style: .plain, target: self, action: #selector(closeSearchText(_:)))
        return button
    }()
    
    private var resultTableViewController = LocationResultViewController()
    private var searchController: UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setUpSearchController()
        setUpTableView()
    }
    
    private func configure() {
        title = "숙소 찾기"
        navigationItem.rightBarButtonItem = deleteText
        navigationItem.hidesSearchBarWhenScrolling = false
        tabBarController?.tabBar.isHidden = true
    }
    
    private func setUpSearchController() {
        searchController = UISearchController(searchResultsController: resultTableViewController)
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.showsCancelButton = false
        searchController.searchBar.searchTextField.clearButtonMode = .never
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
    }
    
    private func setUpTableView() {
        tableView.register(LocationCell.self, forCellReuseIdentifier: LocationCell.identifier)
        let header = LocationHeaderView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        tableView.tableHeaderView = header
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async {
            self.searchController.searchBar.becomeFirstResponder()
        }
    }
    
    @objc func closeSearchText(_ gesture: UIBarButtonItem) {
        searchController.searchBar.searchTextField.text?.removeAll()
        searchController.dismiss(animated: true, completion: nil)
        searchController.searchBar.resignFirstResponder()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: LocationCell.identifier, for: indexPath) as? LocationCell else {
            return .init()
        }
        cell.configure(city: cities[indexPath.row])
        return cell
    }
    
}

extension LocationSearchViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        resultCities = cities.filter({ (data:String) -> Bool in
            return data.contains(searchController.searchBar.text ?? "")
        })
        guard let resultController = searchController.searchResultsController as? LocationResultViewController else {
            return
        }
        resultController.resultCities = resultCities
        resultController.tableView.reloadData()
    }
}
