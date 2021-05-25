//
//  RoomInformationViewDataSource.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/24.
//

import UIKit

class RoomInformationViewDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RoomInformationCell", for: indexPath) as? RoomInformationCell else {
            return RoomInformationCell()
        }
        return cell
    }
}

extension RoomInformationViewDataSource: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "RoomInformationHeader", for: indexPath)
        return headerView
    }
}
