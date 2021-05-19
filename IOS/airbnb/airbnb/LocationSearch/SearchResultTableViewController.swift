//
//  SearchResultViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/19.
//

import UIKit

class SearchResultTableViewController: UITableViewController {

    @IBOutlet var searchResultTable: UITableView!
    private var searchResults: [String]?
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    func updateSearchResult(with newResults: [String]) {
        searchResults = newResults
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResults?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = SearchResultTableViewCell.reuseIdentifier
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? SearchResultTableViewCell ?? SearchResultTableViewCell()
        cell.locationLabel.text = searchResults?[indexPath.row] ?? ""
        return cell
    }
    
}
