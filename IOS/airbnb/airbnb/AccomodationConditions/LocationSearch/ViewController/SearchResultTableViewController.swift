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

final class SearchResultTableViewController: UITableViewController {

    @IBOutlet var searchResultTable: UITableView!
    private var searchResults: [LocationSearchResult]?
    private var viewModel = SearchResultViewModel()
    weak var delegate: SearchResultDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }

    private func bind() {
        viewModel.bind { [weak self] searchResults in
            self?.updateTableView(with: searchResults)
        } errorHandler: { [weak self] error in
            self?.alertError(error: error)
        }
    }
    
    func updateSearchResult(with newKeyword: String) {
        viewModel.newData(with: newKeyword)
    }
    
    private func updateTableView(with searchResults: [LocationSearchResult]) {
        self.searchResults = searchResults
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    private func alertError(error: Error) {
        let customError = error as? NetworkError ?? NetworkError.unknown
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
