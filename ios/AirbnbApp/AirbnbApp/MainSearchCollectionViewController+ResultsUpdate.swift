//
//  MainSearchCollectionViewController+ResultsUpdate.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/21.
//

import UIKit

extension MainSearchCollectionViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let searchResults = searchedDestinations
        
        let whitespaceCharacterSet = CharacterSet.whitespaces
        let strippedString = searchController.searchBar.text!.trimmingCharacters(in: whitespaceCharacterSet).lowercased()
        let searchItems = strippedString.components(separatedBy: " ") as [String]
        
        var filtered = searchResults
        var curTerm = searchItems[0]
        var idx = 0
        while curTerm != "" {
            filtered = filtered.filter {
                $0.name.lowercased().contains(curTerm)
            }
            idx += 1
            curTerm = (idx < searchItems.count) ? searchItems[idx] : ""
        }
        
        if let resultsController = searchController.searchResultsController as? ResultsCollectionController {
            resultsController.filteredDestinations = filtered
            resultsController.collectionView.reloadData()
        }
    }
}
