//
//  mainPageCollectionViewDataSource.swift
//  swift-airbnb
//
//  Created by user on 2021/05/19.
//

import UIKit

class mainPageCollectionViewDataSource {
    
    enum Section: Int, CaseIterable {
        case curation, nearbyDestination, variousDestination
        
        func sectionDescription() -> String? {
            switch self {
            case .curation:
                return nil
            case .nearbyDestination:
                return "가까운 여행지 둘러보기"
            case .variousDestination:
                return "어디에서나, 여행은\n살아보는거야!"
            }
        }
    }
    
    lazy var dataSource = UICollectionViewDiffableDataSource<Section, Int>()
    
    func setDataSource(collectionView: UICollectionView) {
        self.dataSource = UICollectionViewDiffableDataSource<Section, Int>(collectionView: collectionView, cellProvider: { (collectionView, indexPath, int) -> UICollectionViewCell? in
            let section = Section.allCases[indexPath.section]
            
            switch section {
            case .curation:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CurationCell.reuseIdentifier, for: indexPath) as! CurationCell
                return cell
            case .nearbyDestination:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NearbyDestinationCell.reuseIdentifier, for: indexPath) as! NearbyDestinationCell
                return cell
            case .variousDestination:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VariousDestinationCell.reuseIdentifier, for: indexPath) as! VariousDestinationCell
                return cell
            }
        })
        
        dataSource.supplementaryViewProvider = { (collectionView: UICollectionView, kind: String, indexPath: IndexPath) -> UICollectionReusableView? in
            guard let supplementaryView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: MainPageHeaderView.reuseIdentifier, for: indexPath) as? MainPageHeaderView else {
                return UICollectionReusableView()
            }
            supplementaryView.mainLabel.text = Section.allCases[indexPath.section].sectionDescription()
            return supplementaryView
        }
    }
    
    func applySnapshot() {
        var snapshot = self.dataSource.snapshot()
        snapshot.appendSections([.curation, .nearbyDestination, .variousDestination])
        snapshot.appendItems([1], toSection: .curation)
        snapshot.appendItems([2,3,4,5,6,10], toSection: .nearbyDestination)
        snapshot.appendItems([7,8,9], toSection: .variousDestination)
        self.dataSource.apply(snapshot)
    }
}
