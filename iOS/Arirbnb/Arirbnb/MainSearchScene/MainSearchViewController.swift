//
//  ViewController.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/17.
//

import UIKit

struct MainSearchViewControllerAction {
    let showDetailSearchView : () -> ()
}

class MainSearchViewController: UIViewController, ViewControllerIdentifierable {
    static let sectionHeaderElementKind = "MainViewSectionHeaderElement"
 
    static func create(_ action: MainSearchViewControllerAction, _ destinations: [[Destination]] = []) -> MainSearchViewController {
        guard let vc = storyboard.instantiateViewController(identifier: storyboardID) as? MainSearchViewController else {
            return MainSearchViewController()
        }
        vc.action = action
        vc.destinations = destinations
        return vc
    }
    
    enum Section: Int, CaseIterable {
        case heroImages, adjacentDestinations, themeDestinations
        func sectionHeaderString() -> String? {
            switch self {
            case .heroImages: return nil
            case .adjacentDestinations: return "가까운 여행지 둘러보기"
            case .themeDestinations: return "어디에서나, 여행은 살아보는거야!"
            }
        }
    }
    
    @IBOutlet private weak var mainCollectionView: UICollectionView!
    
    private lazy var dataSource: UICollectionViewDiffableDataSource<Section, Destination> = configureDataSource()
    private var action: MainSearchViewControllerAction?
    private var destinations: [[Destination]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backButtonTitle = "뒤로"
        navigationController?.setNavigationBarHidden(true, animated: false)
        configureCollectionView()
        applySnapshot()
    }

    private func configureCollectionView(){
        mainCollectionView.delegate = self
        mainCollectionView.setCollectionViewLayout(createLayout(), animated: false)
        registerSubviews(with: mainCollectionView)
    }

    private func registerSubviews(with collectionView: UICollectionView) {
        collectionView.register(HeroImageCell.self, forCellWithReuseIdentifier: HeroImageCell.reuseIdentifier)
        collectionView.register(AdjacentDestinationsCell.nib, forCellWithReuseIdentifier: AdjacentDestinationsCell.reuseIdentifier)
        collectionView.register(ThemeDestinationsCell.nib, forCellWithReuseIdentifier: ThemeDestinationsCell.reuseIdentifier)
        collectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderView.reuseIdentifier)
    }
}

//MARK: - Actions

extension MainSearchViewController {
    @IBAction func didTappedSearchButton(_ sender: Any) {
        action?.showDetailSearchView()
    }
}

//MARK: - Delegate

extension MainSearchViewController: UICollectionViewDelegate {
    
}

//MARK: - Diffable DataSource

extension MainSearchViewController {
    private func configureDataSource() -> UICollectionViewDiffableDataSource<Section, Destination> {
        let dataSource = UICollectionViewDiffableDataSource<Section, Destination>(collectionView: mainCollectionView) { (collectionView: UICollectionView, indexPath: IndexPath, item: Destination) -> UICollectionViewCell? in
            let sectionKind = Section.allCases[indexPath.section]

            switch sectionKind {
            case .heroImages:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HeroImageCell.reuseIdentifier, for: indexPath) as? HeroImageCell
                cell?.configure()
                return cell
            case .adjacentDestinations:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AdjacentDestinationsCell.reuseIdentifier, for: indexPath) as? AdjacentDestinationsCell
                cell?.configure(with: item)
                return cell
            case .themeDestinations:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThemeDestinationsCell.reuseIdentifier, for: indexPath) as? ThemeDestinationsCell
                cell?.configure(with: item)
                return cell
            }
        }
        
        dataSource.supplementaryViewProvider = {(collectionView: UICollectionView, kind: String, indexPath: IndexPath) -> UICollectionReusableView? in
            guard let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderView.reuseIdentifier, for: indexPath) as? HeaderView else { return UICollectionReusableView() }
            view.configure(headerText: Section.allCases[indexPath.section].sectionHeaderString())
            return view
        }
        
        return dataSource
    }

    private func applySnapshot() {
        var snapshot = NSDiffableDataSourceSnapshot<Section, Destination>()
        snapshot.appendSections(Section.allCases)
        Section.allCases.forEach { section in
            snapshot.appendItems(destinations[section.rawValue], toSection: section)
        }
        dataSource.apply(snapshot)
    }
}

//MARK: - Compositional Layout

extension MainSearchViewController {
    private func createLayout() -> UICollectionViewLayout {
        let config = UICollectionViewCompositionalLayoutConfiguration()
        config.interSectionSpacing = 40
        
        let layout = UICollectionViewCompositionalLayout(sectionProvider: { [weak self] (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) in
            let sectionKind = Section.allCases[sectionIndex]
            
            switch sectionKind {
            case .heroImages:
                return self?.createHeroImagesLayout()
            case .adjacentDestinations:
                return self?.createAdjacentDestinationsLayout()
            case .themeDestinations:
                return self?.createThemeDestinationsLayout()
            }
        }, configuration: config)
        
        return layout
    }
    
    private func createHeroImagesLayout() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.5))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 1)
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        return section
    }
    
    private func createAdjacentDestinationsLayout() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.3))
        let item  = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 24, leading: 0, bottom: 12, trailing: 0)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .fractionalHeight(0.3))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 2)
        group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0)
    
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(44))
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        
        let section = NSCollectionLayoutSection(group: group)
        section.boundarySupplementaryItems = [sectionHeader]
        section.orthogonalScrollingBehavior = .groupPaging
        
        return section
    }
    
    private func createThemeDestinationsLayout() -> NSCollectionLayoutSection {
        let itemSieze = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSieze)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.8), heightDimension: .fractionalHeight(0.61))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
        group.contentInsets = NSDirectionalEdgeInsets(top: 24, leading: 16, bottom: 0, trailing: 0)
        
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(44))
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        
        let section = NSCollectionLayoutSection(group: group)
        section.boundarySupplementaryItems = [sectionHeader]
        section.orthogonalScrollingBehavior = .groupPaging
        
        return section
    }
}
