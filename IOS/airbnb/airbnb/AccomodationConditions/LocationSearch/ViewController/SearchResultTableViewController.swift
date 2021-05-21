//
//  SearchResultViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/19.
//

import UIKit

protocol SearchResultDelegate: AnyObject {
    func didSelect(result: LocationSearchResult)
}

final class SearchResultTableViewController: UITableViewController, Instantiable {

    static var reuseIdentifier: String { String(describing: self) }
    
    @IBOutlet var searchResultTable: UITableView!
    private var searchResults: [LocationSearchResult]?
    private var viewModel: SearchResultConfigurable!
    weak var delegate: SearchResultDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = SearchResultViewModel()
    }

    func updateSearchResult(with newKeyword: String) {
        guard let viewModel = viewModel else { return }
        
        viewModel.searchResults(for: newKeyword) { [weak self] result in
            do {
                let searchResults = try result.get()
                self?.updateTableView(with: searchResults)
            } catch {
                self?.alertError(error: error)
            }
        }
    }
    
    private func updateTableView(with searchResults: [LocationSearchResult]) {
        self.searchResults = searchResults
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    private func alertError(error: Error) {
        let customError = error as? CustomError ?? CustomError.unknown
        let alert = AlertFactory.create(error: customError)
        self.present(alert, animated: true, completion: nil)
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
