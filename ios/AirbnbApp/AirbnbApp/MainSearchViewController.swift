//
//  MainSearchViewController.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/18.
//

import UIKit

class MainSearchViewController: UIViewController {
    private var searchController = UISearchController()
    private var bestDestinationsTableView = UITableView()
    private var bestDestinations = [Destination]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        self.title = "숙소 찾기"
        
        configureSearchController()
        
        guard let destinations = JSONParser.parse(jsonData: MockJSON.bestDestinations, to: [Destination].self) else {
            return
        }
        bestDestinations = destinations
        
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        configureBestDestinationsTableView()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func configureSearchController() {
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.searchTextField.placeholder = "어디로 여행가세요?"
        searchController.searchBar.returnKeyType = .go
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.automaticallyShowsCancelButton = false
        navigationItem.searchController = searchController
    }
    
    func configureBestDestinationsTableView() {
        bestDestinationsTableView = UITableView(frame: self.view.frame)
        self.view.addSubview(bestDestinationsTableView)
        bestDestinationsTableView.dataSource = self
        self.bestDestinationsTableView.register(DestinationTableViewCell.nib(),
                                                forCellReuseIdentifier: DestinationTableViewCell.reuseIdentifier)
        bestDestinationsTableView.tableHeaderView = BestDestinationsTableHeaderView()
        bestDestinationsTableView.tableHeaderView?.frame.size.height = 70.0
        bestDestinationsTableView.rowHeight = 80.0
        bestDestinationsTableView.separatorStyle = .none
    }
}

//MARK: - UITableViewDataSource

extension MainSearchViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bestDestinations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DestinationTableViewCell.reuseIdentifier, for: indexPath) as? DestinationTableViewCell else {
            return UITableViewCell()
        }
        cell.destinationNameLabel.text = bestDestinations[indexPath.row].name
        cell.drivingTimeLabel.text = bestDestinations[indexPath.row].drivingTime
        return cell
    }
}
