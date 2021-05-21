//
//  MainCollectionViewController.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/20.
//

import UIKit

class MainSearchCollectionViewController: UICollectionViewController {
    private var searchController = UISearchController()
    private var bestDestinations = [Destination]()
    private var layout = UICollectionViewFlowLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.register(DestinationCollectionViewCell.nib(),
                                      forCellWithReuseIdentifier: DestinationCollectionViewCell.reuseIdentifier)
        self.collectionView.register(BestDestinationsCollectionHeaderView.self,
                                     forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                     withReuseIdentifier: BestDestinationsCollectionHeaderView.reuseIdentifier)
        
        layout.headerReferenceSize = CGSize(width: self.collectionView.frame.size.width, height: 78.0)
        layout.itemSize = CGSize(width: self.collectionView.frame.size.width, height: 64.0)
        layout.minimumLineSpacing = 16.0
        self.collectionView.collectionViewLayout = layout
        
        self.collectionView.backgroundColor = .systemBackground
        self.title = "숙소 찾기"
        
        configureSearchController()
        
        guard let destinations = JSONParser.parse(jsonData: MockJSON.bestDestinations, to: [Destination].self) else {
            return
        }
        bestDestinations = destinations
        
        guard let addresses = JSONParser.parse(jsonData: MockJSON.savedAddresses, to: [Destination].self) else {
            return
        }
        searchedDestinations = addresses
        
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        self.tabBarController?.tabBar.isHidden = false
    }
    
    func configureSearchController() {
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.searchTextField.placeholder = "어디로 여행가세요?"
        searchController.searchBar.returnKeyType = .go
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.automaticallyShowsCancelButton = false
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bestDestinations.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DestinationCollectionViewCell.reuseIdentifier, for: indexPath) as? DestinationCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.destinationNameLabel.text = bestDestinations[indexPath.row].name
        cell.drivingTimeLabel.text = bestDestinations[indexPath.row].drivingTime
        return cell
    }
    
    // MARK: UICollectionViewDelegate

    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: BestDestinationsCollectionHeaderView.reuseIdentifier, for: indexPath)
        return headerView
    }
}
