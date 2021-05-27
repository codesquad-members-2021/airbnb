//
//  NearLocationCollectionViewDataSource.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/18.
//

import UIKit

class TripPlaceCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    private var tripPlace: [TripPlace]
    
    init(tripPlace: [TripPlace]) {
        self.tripPlace = tripPlace
    }
    
    func updateTripPlace(tripPlace: [TripPlace]) {
        self.tripPlace = tripPlace
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tripPlace.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TripPlaceCollectionViewCell", for: indexPath) as? TripPlaceCollectionViewCell else {
            return TripPlaceCollectionViewCell()
        }
        
        cell.update(id: tripPlace[indexPath.row].id, name: tripPlace[indexPath.row].name, imageUrl: tripPlace[indexPath.row].imageUrl)
        
        return cell
    }
}
