//
//  ThemePlaceDataSource.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/21.
//

import UIKit

class ThemePlaceDataSource: NSObject, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThemePlaceCell.reuseIdentifier, for: indexPath) as! ThemePlaceCell
        return cell
    }
}
