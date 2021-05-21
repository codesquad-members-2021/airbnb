//
//  MainCollectionViewController.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/20.
//

import UIKit

final class MainSearchCollectionViewController: UICollectionViewController {
    var viewModel: DestinationsViewModel!
    
    private var resultsCollectionController: ResultsCollectionController!
    private var searchController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = DefaultDestinationsViewModel()
        viewModel.updateDestinations()
        
        self.title = "숙소 찾기"
        self.tabBarController?.tabBar.isHidden = true
        
        configureCollectionView()
        configureResultsCollectionController()
        configureSearchController()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.tabBarController?.tabBar.isHidden = false
    }
    
    private func configureCollectionView() {
        self.collectionView.register(DestinationCollectionViewCell.nib(),
                                     forCellWithReuseIdentifier: DestinationCollectionViewCell.reuseIdentifier)
        self.collectionView.register(BestDestinationsCollectionHeaderView.self,
                                     forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                     withReuseIdentifier: BestDestinationsCollectionHeaderView.reuseIdentifier)
        
        self.collectionView.backgroundColor = .systemBackground
        
        let headerSize = CGSize(width: self.collectionView.frame.size.width, height: 78.0)
        let bestDestinationsLayout = makeFlowLayout(headerReferenceSize: headerSize)
        self.collectionView.collectionViewLayout = bestDestinationsLayout
    }
    
    private func configureResultsCollectionController() {
        let resultsLayout = makeFlowLayout()
        resultsLayout.sectionInset = UIEdgeInsets(top: 26.0, left: 0.0, bottom: 64.0, right: 0.0)
        resultsCollectionController = ResultsCollectionController(collectionViewLayout: resultsLayout)
    }
    
    private func makeFlowLayout(headerReferenceSize: CGSize = CGSize(width: 0.0, height: 0.0)) -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.headerReferenceSize = headerReferenceSize
        layout.itemSize = CGSize(width: self.collectionView.frame.size.width, height: 64.0)
        layout.minimumLineSpacing = 16.0
        return layout
    }
    
    private func configureSearchController() {
        searchController = UISearchController(searchResultsController: resultsCollectionController)
        searchController.searchResultsUpdater = self
        searchController.searchBar.searchTextField.placeholder = "어디로 여행가세요?"
        searchController.searchBar.returnKeyType = .go
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.automaticallyShowsCancelButton = false
        searchController.searchBar.searchTextField.clearButtonMode = .never
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.searchBar.delegate = self
        
        definesPresentationContext = true
    }
}

//MARK: - UICollectionViewDataSource, UICollectionViewDelegate

extension MainSearchCollectionViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.bestDestinations.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DestinationCollectionViewCell.reuseIdentifier, for: indexPath) as? DestinationCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.fill(with: viewModel.bestDestinations[indexPath.row])
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: BestDestinationsCollectionHeaderView.reuseIdentifier, for: indexPath)
        return headerView
    }
}

// MARK: - UISearchBarDelegate

extension MainSearchCollectionViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard let inputText = searchBar.text else { return }
        self.navigationItem.rightBarButtonItem = inputText.isEmpty ? nil : UIBarButtonItem(title: "지우기",
                                                                                           style: .done,
                                                                                           target: self,
                                                                                           action: #selector(clearSearchBar))
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchController.dismiss(animated: true, completion: nil)
        searchBar.text = ""
    }
    
    @objc
    func clearSearchBar() {
        searchController.searchBar.text = ""
        self.navigationItem.rightBarButtonItem = nil
    }
}
