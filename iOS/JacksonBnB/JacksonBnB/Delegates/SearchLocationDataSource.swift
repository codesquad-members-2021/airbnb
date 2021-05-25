//
//  SearchLocationDataSource.swift
//  JacksonBnB
//
//  Created by jinseo park on 5/25/21.
//

import UIKit
class SearchLocationDataSource: NSObject, UICollectionViewDataSource, UISearchResultsUpdating {
    
    let searchLocationsController = UISearchController()
    let dbManager = DataBaseManager()
    var allLocations = Locations(locations: [])
    var filteredLocations = Locations(locations: [])
    
    override init() {
        super.init()
        searchLocationsController.searchResultsUpdater = self
        searchLocationsController.obscuresBackgroundDuringPresentation = false
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if searchLocationsController.isActive {
            return filteredLocations.locations.count
        }else {
            allLocations = dbManager.getLocations()
            return allLocations.locations.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LocationCell.reuseIdentifier, for: indexPath) as! LocationCell
        if searchLocationsController.isActive {
            cell.locationNameLabel.text = filteredLocations.locations[indexPath.row].name
            cell.locationCellImageView.image = UIImage(named: filteredLocations.locations[indexPath.row].imageName)
        }else {
            allLocations = dbManager.getLocations()
            cell.locationNameLabel.text = allLocations.locations[indexPath.row].name
            cell.locationCellImageView.image = UIImage(named: allLocations.locations[indexPath.row].imageName)
        }
        return cell
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = self.searchLocationsController.searchBar.text else {
            return
        }
        print(text)
        filteredLocations = dbManager.getFilteredLocations(by: text)
        NotificationCenter.default.post(name: Notification.Name("cellsChanged"), object: nil)
    }
    
}
