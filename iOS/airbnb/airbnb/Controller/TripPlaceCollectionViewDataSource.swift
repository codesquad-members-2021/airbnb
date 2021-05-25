//
//  NearLocationCollectionViewDataSource.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/18.
//

import UIKit

class TripPlaceCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TripPlace", for: indexPath) 
        
        return cell
    }
}
