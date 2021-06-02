//
//  NearPlaceDataSource.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/21.
//

import UIKit

class NearPlaceDataSource: NSObject, UICollectionViewDataSource {
    
    @Published var places = [NearPlace]()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return places.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = places[indexPath.row]
        
        guard let cell = collectionView
                .dequeueReusableCell(withReuseIdentifier: NearPlaceCell.reuseIdentifier,
                                     for: indexPath) as? NearPlaceCell
        else {
            return UICollectionViewCell()
        }
        cell.areaTitle.text = item.name
        cell.timeRequired.text = "차로 \(item.distance) 시간 거리"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader :
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderReusableView.reuseIdentifier, for: indexPath)
            return headerView
        default :
            assert(false)
        }
    }
    
}
