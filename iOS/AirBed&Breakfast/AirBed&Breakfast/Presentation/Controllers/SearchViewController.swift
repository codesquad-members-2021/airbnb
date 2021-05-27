//
//  SearchViewController.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/18.
//

import UIKit
import Combine

class SearchViewController: UIViewController {
    
    enum Section {
        case main
    }
    
    @IBOutlet weak var searchResultCollectionView: UICollectionView!
    
    var dataSource: UICollectionViewDiffableDataSource<Section, String>! = nil
    // whenever value of this changes, will fetch relevant address info from the server.
    let searchController = UISearchController(searchResultsController: nil)
    // will have Destination data model later
    var filteredDestinations: [String] = []
    var isSearchBarEmpty: Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    var isFiltering: Bool {
        return searchController.isActive && !isSearchBarEmpty
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchResultCollectionView()
        configureDataSource()
        
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "행선지 선택"
        navigationItem.searchController = searchController
        definesPresentationContext = true

    }

    @IBAction func navigationBarBackButtonPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: false, completion: nil)
    }
    
    @IBAction func navigationBarClearButtonPressed(_ sender: UIBarButtonItem) {
        self.searchController.searchBar.text = ""
    }
}

extension SearchViewController {
    private func createCollectionViewLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.8),
                                             heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let inset: CGFloat = 10
        item.contentInsets = NSDirectionalEdgeInsets(top: inset, leading: inset, bottom: inset, trailing: inset)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                              heightDimension: .fractionalWidth(0.2))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                         subitems: [item])

        let section = NSCollectionLayoutSection(group: group)

        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
    
    private func configureSearchResultCollectionView() {
        searchResultCollectionView.collectionViewLayout = createCollectionViewLayout()
        searchResultCollectionView.delegate = self
        view.addSubview(searchResultCollectionView)
    }
    
    private func configureDataSource() {
        let cellRegistration = UICollectionView.CellRegistration<SearchResultCollectionViewCell, String>.init(cellNib: SearchResultCollectionViewCell.nib) { (cell, indexPath, item) in
            cell.destinationNameLabel.text = item
            cell.distanceLabel.text = "걸어서 100분"
        }
        
        dataSource = UICollectionViewDiffableDataSource<Section, String>(collectionView: self.searchResultCollectionView) {
            (collectionView: UICollectionView, indexPath: IndexPath, item: String) -> SearchResultCollectionViewCell? in
            // Return the cell.
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: item)
        }
        // initial data
        var snapshot = NSDiffableDataSourceSnapshot<Section, String>()
        snapshot.appendSections([.main])
        let myDesArray = ["대구", "서울", "부산"]
        snapshot.appendItems(myDesArray)
        dataSource.apply(snapshot, animatingDifferences: false)
    }
}

extension SearchViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let targetVC = self.storyboard?.instantiateViewController(identifier: String(describing: SetUpViewController.self)) as! SetUpViewController
        
        let cell = (collectionView.cellForItem(at: indexPath) as? SearchResultCollectionViewCell)
        targetVC.designatedLocation = cell?.destinationNameLabel.text
        navigationController?.pushViewController(targetVC, animated: false)
    }
    
}

