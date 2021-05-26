//
//  RecommendTripCollectionViewDataSource.swift
//  airbnb
//
//  Created by 박정하 on 2021/05/18.
//

import UIKit

class RecommendTripCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    private var recommendTrip: [RecommendTrip]
    
    init(recommendTrip: [RecommendTrip]) {
        self.recommendTrip = recommendTrip
    }
    
    func updateRecommendTrip(recommendTrip: [RecommendTrip]) {
        self.recommendTrip = recommendTrip
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recommendTrip.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendTripCollectionViewCell", for: indexPath) as? RecommendTripCollectionViewCell else {
            return RecommendTripCollectionViewCell()
        }
        
        cell.update(name: recommendTrip[indexPath.row].name, imageUrl: recommendTrip[indexPath.row].imageUrl)
        return cell
    }
}

