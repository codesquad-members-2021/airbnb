//
//  NearPlaceDataSource.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/21.
//

import UIKit

struct Dummy {
    static var nearPlaces : [NearPlaceDTO] = [
        NearPlaceDTO(imageURL: nil, localName: "서울", distance: 0.5),
        NearPlaceDTO(imageURL: nil, localName: "부산", distance: 6),
        NearPlaceDTO(imageURL: nil, localName: "강남", distance: 2)
    ]
}
class NearPlaceDataSource: NSObject, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Dummy.nearPlaces.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = Dummy.nearPlaces[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NearPlaceCell.reuseIdentifier, for: indexPath) as! NearPlaceCell
        cell.areaTitle.text = item.localName
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
