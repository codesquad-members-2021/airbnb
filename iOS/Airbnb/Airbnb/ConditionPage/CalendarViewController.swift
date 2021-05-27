//
//  CalendarViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/05/25.
//

import UIKit

class CalendarViewController: UIViewController {
    
    static let headerElementKind = "header-element-kind"
    
    private var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Int, City>!
    
    private var viewModel = MainPageUseCase()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchBar()
        viewModel.requestMainPage()
        configureHierarchy()
        configureDataSource()
        applySnapshots(with: mainPage.cities)
    }
    
}



//MARK:- Layout & DataSource

extension CalendarViewController {
    
    private func configureHierarchy() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout(isHeaderExist: true))
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .systemBackground
        collectionView.delegate = self
        view.addSubview(collectionView)
    }
    
    private func createLayout(isHeaderExist: Bool) -> UICollectionViewLayout {
        let sectionProvider = { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            // section
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
            
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(0.2))
            let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
            
            let section = NSCollectionLayoutSection(group: group)
            section.interGroupSpacing = 10
            section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 20, trailing: 10)
            
            // header
            if isHeaderExist {
                self.createSectionHeaderLayout(with: section)
            }
            return section
        }
        return UICollectionViewCompositionalLayout(sectionProvider: sectionProvider)
    }
    
    private func createSectionHeaderLayout(with section: NSCollectionLayoutSection) {
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .estimated(44)),
            elementKind: SearchCityViewController.headerElementKind,
            alignment: .top)
        section.boundarySupplementaryItems = [sectionHeader]
    }
    
    private func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Int, City>(collectionView: collectionView) {
            (collectionView, indexPath, city) -> UICollectionViewCell? in
            self.collectionView.register(CityCell.nib, forCellWithReuseIdentifier: CityCell.reuseIdentifier)
            
            let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: CityCell.reuseIdentifier, for: indexPath) as! CityCell
            cell.fillUI(with: city)
            return cell
        }
        self.configureSupplementaryView()
    }
    
    private func configureRegionDataSource() {
        regionDataSource = UICollectionViewDiffableDataSource<Int, Region>(collectionView: collectionView) {
            (collectionView, indexPath, city) -> UICollectionViewCell? in
            self.collectionView.register(RegionCell.nib, forCellWithReuseIdentifier: RegionCell.reuseIdentifier)
            
            let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: RegionCell.reuseIdentifier, for: indexPath) as! RegionCell
            cell.fillUI(with: city)
            return cell
        }
        configureEmptySupplementaryView()
    }
    
    private func configureSupplementaryView() {
        let supplementaryRegistration = UICollectionView.SupplementaryRegistration
        <TitleSupplementaryView>(elementKind: SearchCityViewController.headerElementKind) {
            (supplementaryView, string, indexPath) in
            supplementaryView.label.text = "근처의 인기 여행지"
            supplementaryView.label.font = UIFont.preferredFont(forTextStyle: .title2)
        }
        dataSource.supplementaryViewProvider = { (view, kind, index) in
            return self.collectionView.dequeueConfiguredReusableSupplementary(
                using: supplementaryRegistration, for: index)
        }
    }
 
    private func configureEmptySupplementaryView() {
        let supplementaryRegistration = UICollectionView.SupplementaryRegistration
        <UICollectionReusableView>(elementKind: SearchCityViewController.headerElementKind) {
            (supplementaryView, string, indexPath) in
        }
        regionDataSource.supplementaryViewProvider = { (view, kind, index) in
            return self.collectionView.dequeueConfiguredReusableSupplementary(
                using: supplementaryRegistration, for: index)
        }
    }
    
    private func applySnapshots(with cities: [City]) {
        var snapshot = NSDiffableDataSourceSnapshot<Int, City>()
        
        snapshot.appendSections([1])
        snapshot.appendItems(cities)
        self.dataSource.apply(snapshot)
    }
    
    private func applyRegionSnapshots() {
        var snapshot = NSDiffableDataSourceSnapshot<Int, Region>()
        
        snapshot.appendSections([1])
        snapshot.appendItems(Region.allCities)
        self.regionDataSource.apply(snapshot)
    }
    
}

//MARK:- Selection

extension SearchCityViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
}


