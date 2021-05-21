//
//  ResultsCollectionController.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/20.
//

import UIKit

class ResultsCollectionController: UICollectionViewController {

    var viewModel: ResultsViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ResultsViewModel()
        configureCollectionView()
    }
    
    private func configureCollectionView() {
        self.collectionView.backgroundColor = .systemBackground
        self.collectionView.register(DestinationCollectionViewCell.nib(), forCellWithReuseIdentifier: DestinationCollectionViewCell.reuseIdentifier)
    }

    //MARK: - UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.filteredDestinations.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DestinationCollectionViewCell.reuseIdentifier, for: indexPath) as? DestinationCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.fill(with: viewModel.filteredDestinations[indexPath.row])
        return cell
    }
}
