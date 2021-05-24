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

protocol ResultsTableViewControllerDelegate: NSObject {
    func moveToNext()
}

class ResultsTableViewController: UITableViewController {

    typealias DataSource = UITableViewDiffableDataSource<Section, MKLocalSearchCompletion>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, MKLocalSearchCompletion>
    
    private let resultsTableViewCellReuseId = "resultsTableViewCellReuseId"
    private lazy var dataSource = makeDataSource()
    private var searchResults = [MKLocalSearchCompletion]()
    weak var delegate: ResultsTableViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: resultsTableViewCellReuseId)
        tableView.dataSource = dataSource
        tableView.separatorStyle = .none
    }
}

extension ResultsTableViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        let searchResult = searchResults[indexPath.row]
        let searchRequest = MKLocalSearch.Request(completion: searchResult)
        let search = MKLocalSearch(request: searchRequest)
        search.start { [weak self] (response, error) in
            guard error == nil else {
                print("location api search error...")
                return
            }
            guard let placemark = response?.mapItems[0].placemark else {
                return
            }
            self?.delegate?.moveToNext()
        }
    }
}

extension ResultsTableViewController {
    
    // MARK: Diffable Data Source
    
    func makeDataSource() -> UITableViewDiffableDataSource<Section, MKLocalSearchCompletion> {
        return UITableViewDiffableDataSource(
            tableView: tableView,
            cellProvider: { tableView, indexPath, model in
                let cell = tableView.dequeueReusableCell(
                        withIdentifier: self.resultsTableViewCellReuseId,
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

