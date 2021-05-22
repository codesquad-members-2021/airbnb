//
//  ViewController.swift
//  swift-airbnb
//
//  Created by user on 2021/05/18.
//

import UIKit

class MainPageViewController: UIViewController {
    @IBOutlet weak var mainPageCollectionView: UICollectionView!
    
    private var dataSource = MainPageCollectionViewDataSource()
    private var mainPageModel = MainPageModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCollectionViewCell()
        configureCollectionViewLayout()
        self.dataSource.setDataSource(collectionView: mainPageCollectionView)
        self.dataSource.applySnapshot(with: mainPageModel)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    private func configureCollectionViewLayout() {
        self.mainPageCollectionView.setCollectionViewLayout(createLayout(), animated: false)
    }

    private func configureCollectionViewCell() {
        self.mainPageCollectionView.register(CurationCell.nib, forCellWithReuseIdentifier: CurationCell.reuseIdentifier)
        self.mainPageCollectionView.register(NearbyDestinationCell.nib, forCellWithReuseIdentifier: NearbyDestinationCell.reuseIdentifier)
        self.mainPageCollectionView.register(VariousDestinationCell.nib, forCellWithReuseIdentifier: VariousDestinationCell.reuseIdentifier)
        self.mainPageCollectionView.register(MainPageHeaderView.nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: MainPageHeaderView.reuseIdentifier)
    }
}

//MARK: create layout of collectionView
extension MainPageViewController {
    private func createLayout() -> UICollectionViewLayout {
        let config = UICollectionViewCompositionalLayoutConfiguration()
        config.interSectionSpacing = 20
        
        let layout = UICollectionViewCompositionalLayout(sectionProvider: { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            let section = MainPageCollectionViewDataSource.Section.allCases[sectionIndex]
            
            switch section {
            case .curation:
                return self.createCurationLayout()
            case .nearbyDestination:
                return self.createNearbyDestinationLayout()
            case .variousDestination:
                return self.createVariousDestinationLayout()
            }
        }, configuration: config)
        
        return layout
    }
    
    private func createCurationLayout() -> NSCollectionLayoutSection {
        let curationItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0)))
        
        let curationGroup = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.6)), subitem: curationItem, count: 1)
        
        let curationSection = NSCollectionLayoutSection(group: curationGroup)
        curationSection.orthogonalScrollingBehavior = .groupPaging
        
        return curationSection
    }
    
    private func createNearbyDestinationLayout() -> NSCollectionLayoutSection {
        let destinationItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0)))
        destinationItem.contentInsets = NSDirectionalEdgeInsets(top: 24, leading: 0, bottom: 0, trailing: 0)
        
        let destinationGroup = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .fractionalHeight(0.3)), subitem: destinationItem, count: 2)
        
        let destinationSection = NSCollectionLayoutSection(group: destinationGroup)
        destinationSection.orthogonalScrollingBehavior = .groupPagingCentered
        
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .estimated(28)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        destinationSection.boundarySupplementaryItems = [sectionHeader]
        
        return destinationSection
    }
    
    private func createVariousDestinationLayout() -> NSCollectionLayoutSection {
        let destinationItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0)))
        destinationItem.contentInsets = NSDirectionalEdgeInsets(top: 28, leading: 16, bottom: 48, trailing: 0)
        
        let destinationGroup = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.7), heightDimension: .fractionalHeight(0.7)), subitem: destinationItem, count: 1)
        
        let destinationSection = NSCollectionLayoutSection(group: destinationGroup)
        destinationSection.orthogonalScrollingBehavior = .groupPaging
        
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .estimated(56)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        destinationSection.boundarySupplementaryItems = [sectionHeader]
        
        return destinationSection
    }
}
