//
//  SearchCityViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/05/21.
//

import UIKit
import Combine

class SearchCityViewController: UIViewController {
    
    static let headerElementKind = "header-element-kind"
    
    private var searchController: UISearchController!
    private var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Int, City>!
    private var regionDataSource: UICollectionViewDiffableDataSource<Int, Region>!
    
    private var viewModel = MainPageViewModel()
    private var cancelBag = Set<AnyCancellable>()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchBar()
        viewModel.requestMainPage()
        bind()
        configureHierarchy()
        configureDataSource()
    }
    
}


extension SearchCityViewController {
    
    private func bind() {
        viewModel.$mainPage.receive(on: DispatchQueue.main)
            .sink { mainPage in
                guard let mainPage = mainPage else { return }
                self.applySnapshots(with: mainPage.cities)
            }
            .store(in: &cancelBag)
        
        viewModel.$error
            .receive(on: DispatchQueue.main)
            .sink { error in
                guard let error = error else { return }
                print(error) ///사용자에게 에러 표시하는 부분 미구현
            }.store(in: &cancelBag)
    }
    
}

//MARK:- Search

extension SearchCityViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        // resultVC 없이 화면 띄우기 위해 필요
    }
    
    func configureSearchBar() {
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        searchController.searchBar.delegate = self
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.automaticallyShowsCancelButton = false
        
        self.navigationItem.searchController = searchController
        self.navigationItem.title = "숙소 찾기"
        let eraseButton = UIBarButtonItem(title: "erase", style: .plain, target: self, action: #selector(eraseSearchBar))
        self.navigationItem.rightBarButtonItem = eraseButton
    }
    
    @objc func eraseSearchBar() {
        searchController.searchBar.text = nil
        searchController.searchBar.endEditing(true)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = nil
        searchBar.endEditing(true)
    }
    
}


extension SearchCityViewController: UISearchBarDelegate {
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        configureRegionDataSource()
        applyRegionSnapshots()
        
        collectionView.collectionViewLayout = createLayout(isHeaderExist: false)
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        configureSupplementaryView()
        collectionView.reloadData()
        bind()
        configureDataSource()
        
        collectionView.collectionViewLayout = createLayout(isHeaderExist: true)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.performQuery(with: searchText)
    }
    
}


extension SearchCityViewController {
    
    func performQuery(with filter: String?) {
        let regions = Region.allCities.filter{ contains(filter, region: $0) }.sorted { $0.name < $1.name }

        var snapshot = NSDiffableDataSourceSnapshot<Int, Region>()
        snapshot.appendSections([1])
        snapshot.appendItems(regions)
        regionDataSource.apply(snapshot, animatingDifferences: true)
    }
    
    func contains(_ filter: String?, region: Region) -> Bool {
        guard let filterText = filter else { return true }
        if filterText.isEmpty { return true }
        let lowercasedFilter = filterText.lowercased()
        return region.name.lowercased().contains(lowercasedFilter)
    }
}

//MARK:- Layout & DataSource

extension SearchCityViewController {
    
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
        let detailViewController = DetailDestinationViewController()
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let indexPath = self.collectionView.indexPathsForSelectedItems?.first else { return }
        if let coordinator = self.transitionCoordinator {
            coordinator.animate(alongsideTransition: { context in
                self.collectionView.deselectItem(at: indexPath, animated: true)
            }) { (context) in
                if context.isCancelled {
                    self.collectionView.selectItem(at: indexPath, animated: false, scrollPosition: [])
                }
            }
        } else {
            self.collectionView.deselectItem(at: indexPath, animated: animated)
        }
    }
    
}


