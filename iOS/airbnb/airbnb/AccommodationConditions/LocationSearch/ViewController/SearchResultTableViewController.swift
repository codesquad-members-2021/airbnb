//
//  SearchResultViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/19.
//

import UIKit

protocol SearchResultDelegate: AnyObject {
    func didSelect(result: Location)
}

final class SearchResultTableViewController: UITableViewController {

    @IBOutlet var searchResultTable: UITableView!
    private var searchResultTableViewDataSource: SearchResultTableViewDataSource?
    private var viewModel: (AnyResultHandleModel<[Location]> & SearchResultUpdateModel)?
    weak var delegate: SearchResultDelegate?
    
    static func create(with viewModel: AnyResultHandleModel<[Location]> & SearchResultUpdateModel) -> SearchResultTableViewController {
        let storyboard = StoryboardFactory.create(.accommodationConditions)
        let searchResultTableViewController = ViewControllerFactory.create(from: storyboard, type: SearchResultTableViewController.self)
        searchResultTableViewController.viewModel = viewModel
        return searchResultTableViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchResultTableViewDataSource = SearchResultTableViewDataSource()
        searchResultTable.dataSource = searchResultTableViewDataSource
        bind()
    }

    private func bind() {
        viewModel?.bind { [weak self] searchResults in
            self?.updateTableView(with: searchResults)
        } errorHandler: { [weak self] error in
            self?.alertError(error: error)
        }
    }
    
    private func updateTableView(with searchResults: [Location]) {
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
    
    func updateSearchResult(with newKeyword: String) {
        viewModel?.newData(with: newKeyword)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let targetIndex = indexPath.row
        guard let delegate = delegate,
              let searchResult = searchResultTableViewDataSource?.searchResult(for: targetIndex) else { return }
        delegate.didSelect(result: searchResult)
    }
    
}
