//
//  RoomInformationViewDataSource.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/24.
//

import UIKit

class RoomInformationViewDataSource: NSObject, UICollectionViewDataSource {

    private let searchResult: SearchResult
    
    init(searchResult: SearchResult) {
        self.searchResult = searchResult
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchResult.properties.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RoomInformationCell", for: indexPath) as? RoomInformationCell else {
            return RoomInformationCell()
        }
        cell.roomImageView.load(url: searchResult.properties[indexPath.row].images)
        cell.ratingLabel.text = String(searchResult.properties[indexPath.row].rating) //스트링 변환 모델에서 합시다.
        cell.reviewCountLabel.text = String(searchResult.properties[indexPath.row].reviewCount)
        cell.roomNameLabel.text = searchResult.properties[indexPath.row].title
        cell.priceLabel.text = String(searchResult.properties[indexPath.row].pricePerNight)
        cell.totalPriceLabel.text = String(searchResult.properties[indexPath.row].totalPrice)
        return cell
    }
}

extension RoomInformationViewDataSource: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "RoomInformationHeader", for: indexPath)
        return headerView
    }
}
