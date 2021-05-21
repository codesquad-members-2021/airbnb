//
//  ResultsTableViewController.swift
//  Airbnb
//
//  Created by Ador on 2021/05/20.
//

import UIKit
import MapKit

enum Section {
    case main
}

class ResultsTableViewController: UITableViewController {

    typealias DataSource = UITableViewDiffableDataSource<Section, MKLocalSearchCompletion>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, MKLocalSearchCompletion>
    
    let tableViewCellReuseId = "tableViewCellReuseId"
    private lazy var dataSource = makeDataSource()
    private var searchResults = [MKLocalSearchCompletion]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: tableViewCellReuseId)
        tableView.dataSource = dataSource
        tableView.separatorStyle = .none
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
}

extension ResultsTableViewController {
    
    // MARK: Diffable Data Source
    
    func makeDataSource() -> UITableViewDiffableDataSource<Section, MKLocalSearchCompletion> {
        return UITableViewDiffableDataSource(
            tableView: tableView,
            cellProvider: { tableView, indexPath, model in
                let cell = tableView.dequeueReusableCell(
                        withIdentifier: self.tableViewCellReuseId,
                        for: indexPath)
                let searchResult = self.searchResults[indexPath.row]
                cell.textLabel?.text = searchResult.title
                cell.imageView?.image = UIImage(systemName: "map")
                return cell
            }
        )
    }
    
    func updateSnapshot(animatingChange: Bool = false) {
        var snapshot = Snapshot()
        snapshot.appendSections([.main])
        snapshot.appendItems(searchResults, toSection: .main)
        dataSource.apply(snapshot, animatingDifferences: animatingChange)
    }
}

extension ResultsTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        if searchController.searchBar.text == "" {
            searchResults.removeAll()
        }
        updateSnapshot()
    }
}

extension ResultsTableViewController: MKLocalSearchCompleterDelegate {
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        searchResults = completer.results
    }
    
    func completer(_ completer: MKLocalSearchCompleter, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
}

