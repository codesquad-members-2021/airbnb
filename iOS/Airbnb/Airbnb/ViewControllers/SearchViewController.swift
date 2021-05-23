//
//  SearchViewController.swift
//  Airbnb
//
//  Created by Ador on 2021/05/17.
//

import UIKit
import MapKit

class SearchViewController: UIViewController {

    private let resultsTableViewController = ResultsTableViewController()
    private var searchCompleter = MKLocalSearchCompleter()
    
    private lazy var searchController: UISearchController = {
        let searchController = UISearchController(searchResultsController: resultsTableViewController)
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        searchController.automaticallyShowsCancelButton = false
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchResultsUpdater = resultsTableViewController
        return searchController
    }()
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UINib(nibName: RegionCell.reuseId, bundle: nil),
                                forCellWithReuseIdentifier: RegionCell.reuseId)
        collectionView.register(HeaderCollectionReusableView.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                withReuseIdentifier: HeaderCollectionReusableView.reuseId)
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor = .systemBackground
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        definesPresentationContext = true
        
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "지우기", style: .plain, target: self, action: #selector(deleteText))
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.frame = view.bounds
        
        view.addSubview(collectionView)
        
        searchController.searchBar.delegate = self
        searchCompleter.delegate = resultsTableViewController
        resultsTableViewController.delegate = self
        tabBarController?.tabBar.isHidden = true
    }
    
    @objc func deleteText() {
        searchController.searchBar.text = ""
    }
}

extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchCompleter.queryFragment = searchText
    }
}

extension SearchViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionReusableView.reuseId, for: indexPath) as! HeaderCollectionReusableView
        header.configure(title: "근처의 인기 여행지")
        return header
    }
}

extension SearchViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return RegionCellModelData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RegionCell.reuseId, for: indexPath) as! RegionCell
        let model = RegionCellModelData[indexPath.item]
        cell.configure(model: model)
        return cell
    }
}

extension SearchViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 70)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 10, height: 74)
    }
}

extension SearchViewController: ResultsTableViewControllerDelegate {
    func moveToNext() {
        self.searchController.searchBar.resignFirstResponder()

        let dummy = UIViewController()
        dummy.view.backgroundColor = .systemBackground
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(dummy, animated: true)
        }
    }
}
