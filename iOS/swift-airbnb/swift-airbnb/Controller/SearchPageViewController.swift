//
//  SearchPageViewController.swift
//  swift-airbnb
//
//  Created by user on 2021/05/21.
//

import UIKit

class SearchPageViewController: UICollectionViewController {

    private var searchPageCollectionViewDataSource = SearchPageCollectionViewDataSource()
    private var searchPageModel: SearchPageModel
    private var searchResultController = SearchResultCollectionViewController(collectionViewLayout: UICollectionViewLayout())
    private var searchController: UISearchController!

    required init?(coder: NSCoder) {
        var searchPageMockData = SearchPageMock()
        searchPageMockData.makeMockData()
        self.searchPageModel = SearchPageModel(searchPageData: searchPageMockData)
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSearchController()
        configureNavigation()
        configureCollectionViewLayout()
        configureCollectionViewCell()
        searchPageCollectionViewDataSource.setDataSource(collectionView: self.collectionView)
        searchPageCollectionViewDataSource.applySnapshot(with: self.searchPageModel.searchPageInterface)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    private func configureSearchController() {
        searchController = UISearchController(searchResultsController: searchResultController)
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        searchController.automaticallyShowsCancelButton = false
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchResultsUpdater = self
        self.navigationItem.searchController = searchController
        searchResultController.collectionView.delegate = self
    }
    
    private func configureNavigation() {
        self.navigationItem.hidesSearchBarWhenScrolling = false
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.title = "숙소 찾기"
    }
    
    private func configureCollectionViewLayout() {
        self.collectionView.setCollectionViewLayout(createLayout(), animated: false)
    }

    private func configureCollectionViewCell() {
        self.collectionView.register(NearbyDestinationCell.nib, forCellWithReuseIdentifier: NearbyDestinationCell.reuseIdentifier)
        self.collectionView.register(MainPageHeaderView.nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: MainPageHeaderView.reuseIdentifier)
    }
    
    
}

//MARK: Create layout of collectionView
extension SearchPageViewController {
    private func createLayout() -> UICollectionViewLayout {
        let config = UICollectionViewCompositionalLayoutConfiguration()
        
        let layout = UICollectionViewCompositionalLayout(sectionProvider: { [weak self] (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            return self?.createNearbyPopularDestinationLayout()
        }, configuration: config)
        return layout
    }
    
    private func createNearbyPopularDestinationLayout() -> NSCollectionLayoutSection {
        let destinationItem = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0)))
        destinationItem.contentInsets = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 0, trailing: 0)
        
        let destinationGroup = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .fractionalHeight(0.8)), subitem: destinationItem, count: 8)
        
        let destinationSection = NSCollectionLayoutSection(group: destinationGroup)
        destinationSection.orthogonalScrollingBehavior = .continuous
        
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.9), heightDimension: .fractionalHeight(0.05)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)

        destinationSection.boundarySupplementaryItems = [sectionHeader]
        
        return destinationSection
    }
}

//MARK: SearchResultUpdate 관리
extension SearchPageViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        
        NetworkManager.placeListRequest(about: text) { (responseData) in
            guard let data = responseData else {
                return
            }
            
            if let searchResultController = searchController.searchResultsController as? SearchResultCollectionViewController, let decodedData = ParsingManager.decodeData(type: SearchResultDTO.self, data: data) {
                searchResultController.updateModel(with: decodedData.documents)
            }
        }
    }
}

//MARK: 셀 클릭시 컨트롤러 이동 및 장소 정보 제공
extension SearchPageViewController {
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let calendarViewContoller = self.storyboard?.instantiateViewController(identifier: "calendarViewController") as? CalendarViewController else {
            return
        }
        
        // isSearching()이 true일 때 SearchPageModel의 데이터를,
        // false일 때 SearchResultModel의 데이터를 calendarViewController에 넘기기
        
        self.navigationController?.pushViewController(calendarViewContoller, animated: true)
    }
    
    private func searchBarIsEmpty() -> Bool {
        let text = self.searchController.searchBar.text ?? ""
        return text.isEmpty
    }
    
    private func isSearching() -> Bool {
        return self.searchController.isActive && !searchBarIsEmpty()
    }
}
