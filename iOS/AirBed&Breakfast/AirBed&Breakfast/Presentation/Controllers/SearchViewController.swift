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
    
    var searchResultCollectionView: UICollectionView! = nil
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
        configureHierarchy()
        configureDataSource()
        
        // UISearchController
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "행선지 선택"
        navigationItem.searchController = searchController
        definesPresentationContext = true

    }

    @IBAction func navigationBarBackButtonPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: false, completion: nil)
    }
    
    @IBAction func navigationBarClearButtonPressed(_ sender: UIBarButtonItem) {
    }
}

extension SearchViewController {
    private func createCollectionViewLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.8),
                                             heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                              heightDimension: .fractionalWidth(0.2))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                         subitems: [item])

        let section = NSCollectionLayoutSection(group: group)

        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
    
    private func configureHierarchy() {
        let searchBarHeight = self.searchController.searchBar.frame.height
        let navigationBarHeight = self.navigationController?.navigationBar.frame.height ?? 0
        let topPadding = UIApplication.shared.windows[0].safeAreaInsets.top
        let collectionViewHeightAdjustment = searchBarHeight + navigationBarHeight + topPadding
        
        let collectionViewFrame = CGRect(x: 0, y: collectionViewHeightAdjustment, width: view.frame.width, height: view.frame.height - collectionViewHeightAdjustment)
        searchResultCollectionView = UICollectionView(frame: collectionViewFrame, collectionViewLayout: createCollectionViewLayout())
        searchResultCollectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        searchResultCollectionView.backgroundColor = .systemTeal
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

extension SearchViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {

    }
    
}

