//
//  SuggestedSearchCollectionViewController.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/18.
//

import UIKit

class SuggestedSearchCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.backgroundColor = .systemBackground

        
        self.collectionView!.register(BestDestinationCell.self, forCellWithReuseIdentifier: BestDestinationCell.reuseIdentifier)
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BestDestinationCell.reuseIdentifier, for: indexPath) as? BestDestinationCell else { return UICollectionViewCell() }
        cell.backgroundColor = .systemBlue
        return cell
    }
}
