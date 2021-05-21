//
//  DetailSearchViewController.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/18.
//

import UIKit

class DetailSearchViewController: UIViewController, UISearchResultsUpdating {
    static let storyboardName = "Main"
    static let storybardID = "DetailSearchViewController"
    static func create(_ viewModel: DetailSearchViewModel) -> DetailSearchViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(identifier: storybardID) as? DetailSearchViewController else {
            return DetailSearchViewController()
        }
        
        vc.viewModel = viewModel
        return vc
    }
    
    enum Section: Int, CaseIterable {
        case adjacentDestinations, searchResultDestinations
        func sectionHeaderString() -> String? {
            switch self {
            case .adjacentDestinations: return "근처의 인기 여행지"
            case .searchResultDestinations: return nil
            }
        }
    }

    @IBOutlet weak var destinationsCollectionView: UICollectionView!
    
    private var dataSource: UICollectionViewDiffableDataSource<Section, Int>! = nil
    private var viewModel: DetailSearchViewModel!
    private var searchController: UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavigation()
        configureCollectionView()
        configureDataSource()
        applySnapshot()
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { print("123")
            return 
        }
        if text.isEmpty {
            print("55")
        }
    }
    
    private func configureNavigation() {
        navigationItem.title = "숙소 찾기"
        searchController = UISearchController()
        searchController.searchResultsUpdater = self
        searchController.becomeFirstResponder()
        
        searchController.searchBar.setImage(UIImage(systemName: "magnifyingglass"), for: .search, state: .normal)
        searchController.searchBar.placeholder = "어디로 여행 가세요?"
        searchController.obscuresBackgroundDuringPresentation = true
        searchController.hidesNavigationBarDuringPresentation = false
        definesPresentationContext = true
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    private func configureCollectionView() {
        destinationsCollectionView.setCollectionViewLayout(createLayout(), animated: false)
        registerSubViews()
    }
    
    private func registerSubViews() {
        destinationsCollectionView.register(AdjacentDestinationsCell.nib, forCellWithReuseIdentifier: AdjacentDestinationsCell.reuseIdentifier)
        destinationsCollectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderView.reuseIdentifier)
    }
}

//MARK: - Diffable DataSource

extension DetailSearchViewController {
    private func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Section, Int>(collectionView: destinationsCollectionView) { (collectionView, indexPath, item) -> UICollectionViewCell? in
            var cell = UICollectionViewCell()
            let sectionKind = Section.allCases[indexPath.section]
            
            switch sectionKind {
            case .adjacentDestinations:
                cell = collectionView.dequeueReusableCell(withReuseIdentifier: AdjacentDestinationsCell.reuseIdentifier, for: indexPath)
            case .searchResultDestinations:
                break
            }
            
            return cell
        }
        
        dataSource.supplementaryViewProvider = {(collectionView, kind, indexPath) -> UICollectionReusableView? in
            guard let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderView.reuseIdentifier, for: indexPath) as? HeaderView else { return UICollectionReusableView() }
            view.configure(headerText: Section.allCases[indexPath.section].sectionHeaderString())
            return view
        }
    }
    
    private func applySnapshot() {
        var snapshot = NSDiffableDataSourceSnapshot<Section, Int>()
        snapshot.appendSections(Section.allCases)
        snapshot.appendItems([0,1], toSection: Section.adjacentDestinations)
        dataSource.apply(snapshot)
    }
}

//MARK: - Layout

extension DetailSearchViewController {
    private func createLayout() -> UICollectionViewLayout {
        let config = UICollectionViewCompositionalLayoutConfiguration()
        let layout = UICollectionViewCompositionalLayout(sectionProvider: { [weak self] (sectionIndex, layoutEnvironment) in
            let sectionKind = Section.allCases[sectionIndex]
            
            switch sectionKind {
            case .adjacentDestinations:
                return self?.createAdjacentDestinationsLayout()
            case .searchResultDestinations:
                return self?.createSearchResultDestinationsLayout()
            }
        }, configuration: config)
        return layout
    }
    
    private func createAdjacentDestinationsLayout() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.6), heightDimension: .fractionalHeight(0.15))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 1)
        group.contentInsets = NSDirectionalEdgeInsets.init(top: 8, leading: 16, bottom: 8, trailing: 16)

        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(44))
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)

        let section = NSCollectionLayoutSection(group: group)
        section.boundarySupplementaryItems = [sectionHeader]
        
        return section
    }
    
    private func createSearchResultDestinationsLayout() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.15))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 1)
        
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(44))
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        
        let section = NSCollectionLayoutSection(group: group)
        section.boundarySupplementaryItems = [sectionHeader]
        
        return section
    }
}
