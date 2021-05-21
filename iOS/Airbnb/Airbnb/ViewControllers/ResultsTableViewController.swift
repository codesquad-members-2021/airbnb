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
    
    private lazy var dataSource = makeDataSource()
    private var searchResults = [MKLocalSearchCompletion]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: LocationCell.reuseId, bundle: nil),
                           forCellReuseIdentifier: LocationCell.reuseId)
        tableView.dataSource = dataSource
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
                guard let cell = tableView.dequeueReusableCell(
                        withIdentifier: LocationCell.reuseId,
                        for: indexPath) as? LocationCell else {
                    return UITableViewCell() }
                let searchResult = self.searchResults[indexPath.row]
                cell.location.text = searchResult.title
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

