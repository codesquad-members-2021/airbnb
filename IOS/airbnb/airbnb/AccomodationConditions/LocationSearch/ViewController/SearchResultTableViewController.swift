//
//  SearchResultViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/19.
//

import UIKit

protocol SearchResultDelegate {
    func didSelect(result: LocationSearchResult)
}

class SearchResultTableViewController: UITableViewController {

    @IBOutlet var searchResultTable: UITableView!
    private var searchResults: [LocationSearchResult]?
    var viewModel: SearchResultViewModel?
    var delegate: SearchResultDelegate?
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    func updateSearchResult(with newKeyword: String) {
        guard let viewModel = viewModel else { return }
        
        viewModel.searchResults { searchResults in
            self.searchResults = searchResults
            self.updateTableView()
        }
    }
    
    private func updateTableView() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResults?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = SearchResultTableViewCell.reuseIdentifier
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? SearchResultTableViewCell ?? SearchResultTableViewCell()
        cell.locationLabel.text = searchResults?[indexPath.row].name ?? ""
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let delegate = delegate,
              let searchResult = searchResults?[indexPath.row] else { return }
        delegate.didSelect(result: searchResult)
    }
    
}
