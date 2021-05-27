//
//  RegionDelegate.swift
//  Airbnb
//
//  Created by Ador on 2021/05/26.
//

import UIKit

class RegionDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return regionCellModelData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RegionCell.reuseId, for: indexPath) as! RegionCell
        let model = regionCellModelData[indexPath.item]
        cell.configure(model: model)
        return cell
    }
}

class RegionDelegate: NSObject, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 74 * 3, height: 74)
    }
}

let regionCellModelData = [
    RegionCellModel(image: "서울", location: "서울", distance: "차로 15분 거리"),
    RegionCellModel(image: "인천", location: "인천", distance: "차로 45분 거리"),
    RegionCellModel(image: "의정부", location: "의정부시", distance: "차로 30분 거리"),
    RegionCellModel(image: "대구", location: "대구", distance: "차로 4시간 거리"),
    RegionCellModel(image: "대전", location: "대전", distance: "차로 2.5시간 거리"),
    RegionCellModel(image: "광주", location: "광주", distance: "차로 4시간 거리"),
    RegionCellModel(image: "수원", location: "수원", distance: "차로 45분 거리"),
    RegionCellModel(image: "울산", location: "울산", distance: "차로 5시간 거리")]
