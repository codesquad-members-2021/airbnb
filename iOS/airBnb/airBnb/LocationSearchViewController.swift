//
//  LocationSearchViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/19.
//

import UIKit

class LocationSearchViewController: UITableViewController, UISearchResultsUpdating, UISearchBarDelegate, UISearchControllerDelegate {
    
    var cities = ["서울","광주","의정부시","수원시","대구","울산","부천시"]
    var resultCities: [String] = []
    
    func updateSearchResults(for searchController: UISearchController) {
        resultCities = cities.filter({ (data:String) -> Bool in
            return data.contains(searchController.searchBar.text ?? "")
        })
        resultTableViewController.tableView.reloadData()
    }
    
    private lazy var deleteText: UIBarButtonItem = {
        let button = UIBarButtonItem(title: "지우기" ,style: .plain, target: self, action: #selector(closeSearchText(_:)))
        return button
    }()
    
    private lazy var searchController: UISearchController = {
        let controller = UISearchController(searchResultsController: resultTableViewController)
        controller.obscuresBackgroundDuringPresentation = false
        controller.hidesNavigationBarDuringPresentation = false
        controller.searchBar.showsCancelButton = false
        controller.searchBar.searchTextField.clearButtonMode = .never
        controller.searchBar.placeholder = "어디로 여행가세요?"
        return controller
    }()
    
    @IBOutlet weak var searchTableView: UITableView!
    private var resultTableViewController = UITableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "숙소 찾기"
        navigationItem.rightBarButtonItem = deleteText
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        tabBarController?.tabBar.isHidden = true
        
        tableView.register(LocationCell.self, forCellReuseIdentifier: LocationCell.identifier)
        searchController.searchResultsUpdater = self
        searchController.searchBar.delegate = self
        searchController.delegate = self
        let header = LocationHeaderView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        header.backgroundColor = .clear
        tableView.tableHeaderView = header
        
        resultTableViewController.tableView.register(LocationResultCell.self, forCellReuseIdentifier: LocationResultCell.identifier)
        let resultHeader = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 15))
        resultHeader.backgroundColor = .clear
        resultTableViewController.tableView.tableHeaderView = resultHeader
        resultTableViewController.tableView.separatorStyle = .none
        resultTableViewController.tableView.rowHeight = 80
        resultTableViewController.tableView.dataSource = self
        resultTableViewController.tableView.delegate = self
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
        return tableView == resultTableViewController.tableView ? resultCities.count : cities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == resultTableViewController.tableView {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LocationResultCell.identifier, for: indexPath) as? LocationResultCell else {
                return UITableViewCell()
            }
            cell.configure(city: resultCities[indexPath.row])
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: LocationCell.identifier, for: indexPath) as? LocationCell else {
                return UITableViewCell()
            }
            
            cell.configure(city: cities[indexPath.row])
            return cell
        }
        
    }
    
}
