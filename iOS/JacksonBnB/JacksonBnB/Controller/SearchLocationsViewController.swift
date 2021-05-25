//
//  SearchHotelsViewController.swift
//  JacksonBnB
//
//  Created by jinseo park on 5/20/21.
//

import UIKit

class SearchLocationsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UISearchResultsUpdating {
    
    let searchLocationsController = UISearchController()
    
    let dbManager = DataBaseManager()
    var allLocations = Locations(locations: [])
    var filteredLocations = Locations(locations: [])
    
    @IBOutlet weak var collectionView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if searchLocationsController.isActive {
            return filteredLocations.locations.count
        }else {
            return allLocations.locations.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LocationCell.reuseIdentifier, for: indexPath) as! LocationCell
        if searchLocationsController.isActive {
            cell.locationNameLabel.text = filteredLocations.locations[indexPath.row].name
            cell.locationCellImageView.image = UIImage(named: filteredLocations.locations[indexPath.row].imageName)
        }else {
            cell.locationNameLabel.text = allLocations.locations[indexPath.row].name
            cell.locationCellImageView.image = UIImage(named: allLocations.locations[indexPath.row].imageName)
        }
        return cell
    }
    
  
    @IBOutlet weak var locationsCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        locationsCollectionView.delegate = self
        locationsCollectionView.dataSource = self
        
        let locationNib = UINib(nibName: LocationCell.reuseIdentifier, bundle: nil)
        locationsCollectionView.register(locationNib, forCellWithReuseIdentifier: LocationCell.reuseIdentifier)
                        
        locationsCollectionView.collectionViewLayout = setCollectionViewLayout()
        allLocations = dbManager.getLocations()
        title = "숙소 찾기"
        
        searchLocationsController.searchResultsUpdater = self
        
        
    }
    override func viewDidAppear(_ animated: Bool) {

        self.navigationItem.searchController = searchLocationsController
        self.navigationItem.hidesSearchBarWhenScrolling = false
        
    }
    
    func setCollectionViewLayout() -> UICollectionViewLayout { //콜렉션 뷰 레이아웃 설정
        let size = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: size)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.1))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
        let section = NSCollectionLayoutSection(group: group)
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = self.searchLocationsController.searchBar.text else {
            return
        }    
        filteredLocations = dbManager.getFilteredLocations(by: text)
        self.collectionView.reloadData()
    }
}
