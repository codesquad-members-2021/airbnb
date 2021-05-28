//
//  LocationSearchViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/19.
//

import UIKit

class LocationSearchViewController: UITableViewController {
    
    private var cities = ["서울","광주","의정부시","수원시","대구","울산","부천시"]
    
    private lazy var deleteText: UIBarButtonItem = {
        let button = UIBarButtonItem(title: "지우기" ,style: .plain, target: self, action: #selector(closeSearchText(_:)))
        button.isEnabled = false
        return button
    }()
    
    private lazy var backBarButtonItem: UIBarButtonItem = {
        let button = UIBarButtonItem(title: "뒤로", style: .plain, target: self, action: nil)
        return button
    }()
    
    private var resultTableViewController = LocationResultViewController()
    private let searchViewModel = SearchLocationViewModel()
    private var searchController: UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setUpSearchController()
        setUpTableView()
        resultTableViewController.injectViewModel(from: searchViewModel)
    }
    
    private func configure() {
        title = "숙소 찾기"
        navigationItem.rightBarButtonItem = deleteText
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationItem.backBarButtonItem = backBarButtonItem
        tabBarController?.tabBar.isHidden = true
        tableView.separatorStyle = .none
        tableView.rowHeight = 80
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
        DispatchQueue.main.async { [weak self] in
            self?.searchController.searchBar.becomeFirstResponder()
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        searchController.dismiss(animated: true, completion: nil)
    }
    
    @objc func closeSearchText(_ gesture: UIBarButtonItem) {
        searchController.searchBar.searchTextField.text?.removeAll()
        searchController.searchBar.resignFirstResponder()
        deleteText.isEnabled = false
        searchController.dismiss(animated: true, completion: nil)
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Calendar", bundle: nil)
        guard let calendarViewController = storyBoard.instantiateViewController(withIdentifier: "Calendar") as? CalendarViewController else {
            return
        }
        self.navigationController?.pushViewController(calendarViewController, animated: true)
    }
}

extension LocationSearchViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        searchViewModel.requestSearch(from: searchController.searchBar.text ?? "")
    }
}
