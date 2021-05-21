//
//  SearchHotelsViewController.swift
//  JacksonBnB
//
//  Created by jinseo park on 5/20/21.
//

import UIKit

class SearchHotelsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LocationCell.reuseIdentifier, for: indexPath) as! LocationCell
        return cell
    }
    
    
    @IBOutlet weak var hotelsSearchBar: UISearchBar!
    
    @IBOutlet weak var hotelsCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        hotelsCollectionView.delegate = self
        hotelsCollectionView.dataSource = self
        
        let locationNib = UINib(nibName: LocationCell.reuseIdentifier, bundle: nil)
        hotelsCollectionView.register(locationNib, forCellWithReuseIdentifier: LocationCell.reuseIdentifier)
                
        hotelsCollectionView.collectionViewLayout = setCollectionViewLayout()
    }
    
    func setCollectionViewLayout() -> UICollectionViewLayout {
        let size = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: size)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.1))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
        let section = NSCollectionLayoutSection(group: group)
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
}
