//
//  TravelStyleDelegate.swift
//  Airbnb
//
//  Created by Ador on 2021/05/26.
//

import UIKit

class TravelStyleCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return styleCellModelData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TravelStyleCell.reuseId, for: indexPath) as! TravelStyleCell
        let model = styleCellModelData[indexPath.item]
        cell.configure(model: model)
        return cell
    }
}

class TravelStyleCollectionViewDelegate: NSObject, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 253, height: 308)
    }
}

let styleCellModelData = [
    StyleCellModel(image: "nature", content: "자연생활을 만끽할 수 \n있는 숙소"),
    StyleCellModel(image: "special", content: "독특한 공간"),
    StyleCellModel(image: "house", content: "집 전체"),
    StyleCellModel(image: "dog", content: "반려동물 동반 가능")]
