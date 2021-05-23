//
//  LocationResultViewController.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/22.
//

import UIKit
import Combine

class LocationResultViewController: UITableViewController {

    private var resultCities: [CityInfoList] = []
    private var searchViewModel: SearchLocationViewModel?
    private var cancell: AnyCancellable?
    
    lazy var emptyHeaderView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 15))
        view.backgroundColor = .clear
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(LocationResultCell.self, forCellReuseIdentifier: LocationResultCell.identifier)
        tableView.tableHeaderView = emptyHeaderView
        tableView.separatorStyle = .none
        tableView.rowHeight = 80
        bind()
    }
    
    private func bind() {
        cancell = searchViewModel?.fetchSearchResult()
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { [weak self] (cityInfolist) in
            self?.resultCities = cityInfolist
            self?.tableView.reloadData()
        })
    }
    
    func injectViewModel(from viewmodel: SearchLocationViewModel) {
        self.searchViewModel = viewmodel
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultCities.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: LocationResultCell.identifier, for: indexPath) as? LocationResultCell else {
            return .init()
        }
        cell.configure(city: resultCities[indexPath.row])
        return cell
    }
}
