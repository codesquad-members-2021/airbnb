//
//  ViewController.swift
//  swift-airbnb
//
//  Created by user on 2021/05/18.
//

import UIKit

class mainPageViewController: UIViewController {
    @IBOutlet weak var mainPageCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureCollectionViewLayout()
    }

    func configureCollectionViewLayout() {
        self.mainPageCollectionView.setCollectionViewLayout(createLayout(), animated: false)
    }

}

//MARK: create layout of collectionView
extension mainPageViewController {
    private func createLayout() -> UICollectionViewLayout {
        let config = UICollectionViewCompositionalLayoutConfiguration()
        config.interSectionSpacing = 20
        
        let layout = UICollectionViewCompositionalLayout(sectionProvider: { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            switch sectionIndex {
            case 0:
                return self.createCurationLayout()
            case 1:
                return self.createNearbyDestinationLayout()
            default:
                return self.createVariousDestinationLayout()
            }
        }, configuration: config)
        
        return layout
    }
    
    private func createCurationLayout() -> NSCollectionLayoutSection {
        let curationItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0)))
        
        let curationGroup = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(1.0)), subitem: curationItem, count: 1)
        
        let curationSection = NSCollectionLayoutSection(group: curationGroup)
        
        return curationSection
    }
    
    private func createNearbyDestinationLayout() -> NSCollectionLayoutSection {
        let destinationItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.5)))
        
        let destinationGroup = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(3/4), heightDimension: .fractionalHeight(1/3)), subitem: destinationItem, count: 2)
        
        let destinationSection = NSCollectionLayoutSection(group: destinationGroup)
        
        return destinationSection
    }
    
    private func createVariousDestinationLayout() -> NSCollectionLayoutSection {
        let destinationItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0)))
        
        let destinationGroup = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(2/3), heightDimension: .fractionalHeight(1/2)), subitem: destinationItem, count: 1)
        
        let destinationSection = NSCollectionLayoutSection(group: destinationGroup)
        
        return destinationSection
    }
}
