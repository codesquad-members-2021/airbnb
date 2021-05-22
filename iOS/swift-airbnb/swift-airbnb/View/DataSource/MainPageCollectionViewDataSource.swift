//
//  mainPageCollectionViewDataSource.swift
//  swift-airbnb
//
//  Created by user on 2021/05/19.
//

import UIKit

class MainPageCollectionViewDataSource {
    
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
    
    lazy var dataSource = UICollectionViewDiffableDataSource<Section, AnyHashable>()
    
    func setDataSource(collectionView: UICollectionView) {
        self.dataSource = UICollectionViewDiffableDataSource<Section, AnyHashable>(collectionView: collectionView, cellProvider: { (collectionView, indexPath, item) -> UICollectionViewCell? in
            let section = Section.allCases[indexPath.section]
            
            if let item = item as? Curation, section == .curation {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CurationCell.reuseIdentifier, for: indexPath) as! CurationCell
                cell.configure(model: item)
                return cell
            } else if let item = item as? NearbyDestination, section == .nearbyDestination {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NearbyDestinationCell.reuseIdentifier, for: indexPath) as! NearbyDestinationCell
                cell.configure(model: item)
                return cell
            } else if let item = item as? VariousDestination, section == .variousDestination {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VariousDestinationCell.reuseIdentifier, for: indexPath) as! VariousDestinationCell
                cell.configure(model: item)
                return cell
            } else {
                return UICollectionViewCell()
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
    
    func applySnapshot(with model: MainPageModel) {
        var snapshot = self.dataSource.snapshot()
        snapshot.appendSections([.curation, .nearbyDestination, .variousDestination])
        snapshot.appendItems(model.curations, toSection: .curation)
        snapshot.appendItems(model.nearbyDestinations, toSection: .nearbyDestination)
        snapshot.appendItems(model.variousDestinations, toSection: .variousDestination)
        self.dataSource.apply(snapshot)
    }
}
