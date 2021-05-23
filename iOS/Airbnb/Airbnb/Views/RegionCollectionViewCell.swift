//
//  LocationCollectionViewCell.swift
//  Airbnb
//
//  Created by Ador on 2021/05/18.
//

import UIKit

let RegionCellModelData = [
    RegionCellModel(image: "서울", location: "서울", distance: "차로 15분 거리"),
    RegionCellModel(image: "인천", location: "인천", distance: "차로 45분 거리"),
    RegionCellModel(image: "의정부", location: "의정부시", distance: "차로 30분 거리"),
    RegionCellModel(image: "대구", location: "대구", distance: "차로 4시간 거리"),
    RegionCellModel(image: "대전", location: "대전", distance: "차로 2.5시간 거리"),
    RegionCellModel(image: "광주", location: "광주", distance: "차로 4시간 거리"),
    RegionCellModel(image: "수원", location: "수원", distance: "차로 45분 거리"),
    RegionCellModel(image: "울산", location: "울산", distance: "차로 5시간 거리")]

class RegionCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "RegionCollectionViewCell"
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 74 * 3, height: 74)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UINib(nibName: RegionCell.reuseId, bundle: nil), forCellWithReuseIdentifier: RegionCell.reuseId)
        collectionView.backgroundColor = .systemBackground
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(collectionView)
        setDelegate()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.addSubview(collectionView)
        setDelegate()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = self.bounds
    }
    
    func setDelegate() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension RegionCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return RegionCellModelData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RegionCell.reuseId, for: indexPath) as! RegionCell
        let model = RegionCellModelData[indexPath.item]
        cell.configure(model: model)
        return cell
    }
}
