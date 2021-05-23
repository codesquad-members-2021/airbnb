//
//  StyleCollectionViewCell.swift
//  Airbnb
//
//  Created by Ador on 2021/05/18.
//

import UIKit

class TravelStyleCollectionViewCell: UICollectionViewCell {
    private let styleCellModelData = [
        StyleCellModel(image: "nature", content: "자연생활을 만끽할 수 \n있는 숙소"),
        StyleCellModel(image: "special", content: "독특한 공간"),
        StyleCellModel(image: "house", content: "집 전체"),
        StyleCellModel(image: "dog", content: "반려동물 동반 가능")]
    
    static let reuseId = "StyleCollectionViewCell"
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 253, height: 308)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UINib(nibName: TravelStyleCell.reuseId, bundle: nil), forCellWithReuseIdentifier: TravelStyleCell.reuseId)
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

extension TravelStyleCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
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
