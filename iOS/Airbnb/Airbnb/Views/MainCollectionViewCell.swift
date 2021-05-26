//
//  LocationCollectionViewCell.swift
//  Airbnb
//
//  Created by Ador on 2021/05/18.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "MainCollectionViewCell"
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UINib(nibName: RegionCell.reuseId, bundle: nil),
                                forCellWithReuseIdentifier: RegionCell.reuseId)
        collectionView.register(UINib(nibName: TravelStyleCell.reuseId, bundle: nil),
                                forCellWithReuseIdentifier: TravelStyleCell.reuseId)
        collectionView.backgroundColor = .systemBackground
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(collectionView)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.addSubview(collectionView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = self.bounds
    }
    
    func setup(dataSource: UICollectionViewDataSource) {
        collectionView.dataSource = dataSource
    }
    
    func setup(delegate: UICollectionViewDelegateFlowLayout) {
        collectionView.delegate = delegate
    }
}
