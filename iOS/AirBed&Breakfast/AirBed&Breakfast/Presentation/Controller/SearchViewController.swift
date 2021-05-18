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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configureDataSource()
    }

    @IBAction func navigationBarBackButtonPressed(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func navigationBarClearButtonPressed(_ sender: UIBarButtonItem) {
    }
}

extension SearchViewController {
    private func createLayout() -> UICollectionViewLayout {
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
        searchResultCollectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout())
        searchResultCollectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        searchResultCollectionView.backgroundColor = .systemTeal
        view.addSubview(searchResultCollectionView)
    }
    
    private func configureDataSource() {
        let cellRegistration = UICollectionView.CellRegistration<SearchResultCollectionViewCell, String>.init(cellNib: SearchResultCollectionViewCell.nib) { (cell, indexPath, item) in
            cell.destinationNameLabel.text = item
            cell.distanceLabel.text = "걸어서 100분"
        }
        
        dataSource = UICollectionViewDiffableDataSource<Section, String>(collectionView: self.searchResultCollectionView) {
            (collectionView: UICollectionView, indexPath: IndexPath, item: String) -> SearchResultCollectionViewCell? in
            print(item)
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
