//
//  LocationSearchViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/19.
//

import UIKit
import Combine

class LocationSearchViewController: UITableViewController {
    
    // TODO: - 더미 데이터
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
    private lazy var searchController = UISearchController(searchResultsController: resultTableViewController)
    private var cancellable = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        setUpSearchController()
        setUpTableView()
        bind()
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
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.showsCancelButton = false
        searchController.searchBar.searchTextField.clearButtonMode = .never
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        searchController.delegate = self
        navigationItem.searchController = searchController
    }
    
    private func setUpTableView() {
        tableView.register(LocationCell.self, forCellReuseIdentifier: LocationCell.identifier)
        let header = LocationHeaderView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        tableView.tableHeaderView = header
    }
    
    private func bind() {
        searchController.searchBar.searchTextField.searchTextPublisher.sink { [weak self] (text) in
            self?.searchViewModel.requestSearch(from: text)
        }.store(in: &cancellable)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.async { [weak self] in
            self?.searchController.searchBar.becomeFirstResponder()
        }
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
        let calendarViewController = UIStoryboard.create(identifier: CalendarViewController.self, name: "Calendar")
        self.navigationController?.pushViewController(calendarViewController, animated: true)
    }
}

extension LocationSearchViewController: UISearchControllerDelegate {
    func presentSearchController(_ searchController: UISearchController) {
        deleteText.isEnabled = true
    }
}
