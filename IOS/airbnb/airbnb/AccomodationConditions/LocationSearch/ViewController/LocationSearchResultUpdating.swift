//
//  LocationSearchResultUpdating.swift
//  airbnb
//
//  Created by Song on 2021/05/20.
//

import UIKit

class LocationSearchResultUpdating: NSObject, UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let resultController = searchController.searchResultsController as? SearchResultTableViewController,
              let keyword = searchController.searchBar.searchTextField.text,
              keyword.count > 0 else { return }

        resultController.updateSearchResult(with: keyword)
    }
}
