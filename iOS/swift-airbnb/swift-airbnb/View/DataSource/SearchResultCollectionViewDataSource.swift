//
//  SearchResultCollectionViewDataSource.swift
//  swift-airbnb
//
//  Created by user on 2021/05/23.
//

import UIKit

class SearchResultCollectionViewDataSource {
    
    enum Section {
        case searchResultDestination
    }
    
    lazy var dataSource = UICollectionViewDiffableDataSource<Section, SearchResultDestination>()
    
    func setDataSource(collectionView: UICollectionView) {
        self.dataSource = UICollectionViewDiffableDataSource<Section, SearchResultDestination>(collectionView: collectionView, cellProvider: { (collectionView, indexPath, item) -> UICollectionViewCell? in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchResultCell.reuseIdentifier, for: indexPath) as? SearchResultCell else {
                return UICollectionViewCell()
            }
            cell.configure(model: item)
            return cell
        })
    }
    
    func applySnapshot(with model: [SearchResultDestination]) {
        var snapshot = NSDiffableDataSourceSnapshot<Section, SearchResultDestination>()
        snapshot.appendSections([.searchResultDestination])
        snapshot.appendItems(model, toSection: .searchResultDestination)
        self.dataSource.apply(snapshot)
    }
    
}
