//
//  DetailSearchViewController.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/18.
//

import UIKit

class DetailSearchViewController: UIViewController{
    static let storyboardName = "Main"
    static let storybardID = "DetailSearchViewController"
    static func create() -> DetailSearchViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(identifier: storybardID) as? DetailSearchViewController else {
            return DetailSearchViewController()
        }
        return vc
    }
    
    enum Section: Int, CaseIterable {
        case adjacentDestinations, searchResultDestinations
        func sectionHeaderString() -> String? {
            switch self {
            case .adjacentDestinations: return "근처의 인기 여행지"
            case .searchResultDestinations: return "검색된 장소"
            }
        }
    }
    
    @IBOutlet private weak var destinationsCollectionView: UICollectionView!
    private var searchController: UISearchController!

    private var destinations: [[Destination]] = [MockAdjacentDestination.mockDatas, MockSearchedDestinaion.mockDatas]
    private var filteredDestinations: [Destination]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavigation()
        configureCollectionView()
    }
    
    private func configureNavigation() {
        navigationItem.title = "숙소 찾기"
        searchController = UISearchController()
        searchController.searchResultsUpdater = self
        searchController.becomeFirstResponder()
        
        searchController.searchBar.setImage(UIImage(systemName: "magnifyingglass"), for: .search, state: .normal)
        searchController.searchBar.placeholder = "어디로 여행 가세요?"
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.hidesNavigationBarDuringPresentation = false
        definesPresentationContext = true
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    private func configureCollectionView() {
        registerSubViews()
    }
    
    private func registerSubViews() {
        destinationsCollectionView.register(AdjacentDestinationsCell.nib, forCellWithReuseIdentifier: AdjacentDestinationsCell.reuseIdentifier)
        destinationsCollectionView.register(SearchResultCell.nib(), forCellWithReuseIdentifier: SearchResultCell.reuseIdentifier)
        destinationsCollectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderView.reuseIdentifier)
    }
}

extension DetailSearchViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        filteredDestinations = destinations[Section.searchResultDestinations.rawValue].filter { destination in
            destination.destinationName.contains(text)
        }
        destinationsCollectionView.reloadData()
    }
    
    private var isSearchBarEmpty: Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    private func isSearching() -> Bool{
        return searchController.isActive && !isSearchBarEmpty
    }
}

extension DetailSearchViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if !isSearching() {
            return destinations[Section.adjacentDestinations.rawValue].count
        } else {
            return filteredDestinations.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if !isSearching() {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AdjacentDestinationsCell.reuseIdentifier, for: indexPath) as? AdjacentDestinationsCell
            cell?.configure(with: destinations[Section.adjacentDestinations.rawValue][indexPath.item])
            return cell ?? UICollectionViewCell()
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchResultCell.reuseIdentifier, for: indexPath) as? SearchResultCell
            cell?.configure(with: filteredDestinations[indexPath.item])
            return cell ?? UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderView.reuseIdentifier, for: indexPath) as? HeaderView
            if !isSearching() {
                view?.configure(headerText: Section.adjacentDestinations.sectionHeaderString())
                return view ?? UICollectionReusableView()
            } else {
                view?.configure(headerText: Section.searchResultDestinations.sectionHeaderString())
                return view ?? UICollectionReusableView()
            }
        }
        return UICollectionViewCell()
    }
}

extension DetailSearchViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width * 0.6
        let height = collectionView.bounds.height * 0.125
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 125)
    }
}
