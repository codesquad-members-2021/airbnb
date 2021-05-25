//
//  SearchResultCollectionViewController.swift
//  swift-airbnb
//
//  Created by user on 2021/05/23.
//

import UIKit

class SearchResultCollectionViewController: UICollectionViewController {

    private var dataSource = SearchResultCollectionViewDataSource()
    private var searchResultModel = SearchResultModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureCollectionViewLayout()
        configureCollectionViewCell()
        self.dataSource.setDataSource(collectionView: self.collectionView)
        
    }
    
    func updateModel(with data: [Document]) {
        self.searchResultModel.updateDestinations(with: data)
        self.dataSource.applySnapshot(with: self.searchResultModel.searchResultDestinations)
    }
    
    private func configureCollectionViewLayout() {
        self.view.backgroundColor = .white
        self.collectionView.backgroundColor = .white
        self.collectionView.setCollectionViewLayout(createLayout(), animated: false)
    }

    private func configureCollectionViewCell() {
        self.collectionView.register(SearchResultCell.nib, forCellWithReuseIdentifier: SearchResultCell.reuseIdentifier)
    }
}

//MARK: Create layout of collectionView
extension SearchResultCollectionViewController {
    private func createLayout() -> UICollectionViewLayout {
        let config = UICollectionViewCompositionalLayoutConfiguration()
        
        let layout = UICollectionViewCompositionalLayout(sectionProvider: { [weak self] (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            return self?.createSearchResultLayout()
        }, configuration: config)
        return layout
    }
    
    private func createSearchResultLayout() -> NSCollectionLayoutSection {
        let searchResultItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0)))
        searchResultItem.contentInsets = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 0)
        
        let searchResultGroup = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .fractionalHeight(0.1)), subitems: [searchResultItem])
        
        let searchResultSection = NSCollectionLayoutSection(group: searchResultGroup)
        
        return searchResultSection
    }
}
