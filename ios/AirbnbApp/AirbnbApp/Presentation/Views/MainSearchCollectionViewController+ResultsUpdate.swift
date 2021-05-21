//
//  MainSearchCollectionViewController+ResultsUpdate.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/21.
//

import UIKit

extension MainSearchCollectionViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        let strippedString = text.trimmingCharacters(in: CharacterSet.whitespaces).lowercased()
        let searchItems = strippedString.components(separatedBy: " ") as [String]
        if let resultsController = searchController.searchResultsController as? ResultsCollectionController {
            resultsController.viewModel.filteredDestinations = viewModel.filter(using: searchItems)
            resultsController.collectionView.reloadData()
        }
    }
}
