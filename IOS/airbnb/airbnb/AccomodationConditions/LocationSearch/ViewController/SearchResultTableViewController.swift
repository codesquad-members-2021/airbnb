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
    private var viewModel = SearchResultViewModel()
    private var searchResultTableViewDataSource: SearchResultTableViewDataSource?
    weak var delegate: SearchResultDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchResultTableViewDataSource = SearchResultTableViewDataSource()
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
        self.searchResultTableViewDataSource?.updateResults(with: searchResults)
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    private func alertError(error: Error) {
        let customError = error as? NetworkError ?? NetworkError.unknown
        let alert = AlertFactory.create(error: customError)
        self.present(alert, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let targetIndex = indexPath.row
        guard let delegate = delegate,
              let searchResult = searchResultTableViewDataSource?.searchResult(for: targetIndex) else { return }
        delegate.didSelect(result: searchResult)
    }
    
}
