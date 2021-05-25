//
//  SearchPageCollectionViewDataSource.swift
//  swift-airbnb
//
//  Created by user on 2021/05/21.
//

import UIKit

class SearchPageCollectionViewDataSource {
    
    enum Section: Int, CaseIterable {
        case nearbyPopularDestination
        
        func sectionDescription() -> String? {
            switch self {
            case .nearbyPopularDestination:
                return "근처의 인기 여행지"
            }
        }
    }
    
    lazy var dataSource = UICollectionViewDiffableDataSource<Section, NearbyPopularDestination>()
    
    func setDataSource(collectionView: UICollectionView) {
        self.dataSource = UICollectionViewDiffableDataSource<Section, NearbyPopularDestination>(collectionView: collectionView, cellProvider: { (collectionView, indexPath, item) -> UICollectionViewCell? in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NearbyDestinationCell.reuseIdentifier, for: indexPath) as? NearbyDestinationCell else {
                return UICollectionViewCell()
            }
            cell.configure(data: item)
            return cell
        })
        
        dataSource.supplementaryViewProvider = { (collectionView: UICollectionView, kind: String, indexPath: IndexPath) -> UICollectionReusableView? in
            guard let supplementaryView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: MainPageHeaderView.reuseIdentifier, for: indexPath) as? MainPageHeaderView else {
                return UICollectionReusableView()
            }
            supplementaryView.mainLabel.font = .boldSystemFont(ofSize: 22)
            supplementaryView.mainLabel.text = Section.allCases[indexPath.section].sectionDescription()
            return supplementaryView
        }
    }
    
    func applySnapshot(with model: [NearbyPopularDestination]) {
        var snapshot = self.dataSource.snapshot()
        snapshot.appendSections([.nearbyPopularDestination])
        snapshot.appendItems(model, toSection: .nearbyPopularDestination)
        self.dataSource.apply(snapshot)
    }
    
}
