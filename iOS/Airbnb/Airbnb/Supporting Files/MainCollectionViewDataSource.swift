//
//  MainCollectionViewDataSource.swift
//  Airbnb
//
//  Created by Ador on 2021/05/26.
//

import UIKit

class MainCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    private let regionDelegate = RegionDelegate()
    private let regionDataSource = RegionDataSource()
    private let travelStyleDelegate = TravelStyleCollectionViewDelegate()
    private let travelStyleDataSource = TravelStyleCollectionViewDataSource()
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionViewCell.reuseId, for: indexPath) as? MainCollectionViewCell else {
            return UICollectionViewCell()
        }
        switch indexPath.section {
        case 1:
            cell.setup(delegate: regionDelegate)
            cell.setup(dataSource: regionDataSource)
            return cell
        case 2:
            cell.setup(delegate: travelStyleDelegate)
            cell.setup(dataSource: travelStyleDataSource)
            return cell
        default:
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionReusableView.reuseId, for: indexPath) as? HeaderCollectionReusableView else {
            return UICollectionReusableView()
        }
        switch indexPath.section {
        case 0:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: ImageHeaderCollectionReusableView.reuseId, for: indexPath) as! ImageHeaderCollectionReusableView
            return header
        case 1:
            header.configure(title: "가까운 여행지 둘러보기")
        case 2:
            header.configure(title: "어디에서나 여행은 \n살아보는거야!")
        default:
            break
        }
        return header
    }
}
