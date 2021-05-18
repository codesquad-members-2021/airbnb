//
//  SearchViewController.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/18.
//

import UIKit
import Combine

class SearchViewController: UIViewController {

    enum Section {
        case main
    }
    
    @IBOutlet weak var searchResultCollectionView: UICollectionView!
    
    var dataSource: UICollectionViewDiffableDataSource<Section, String>! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDataSource()
    }

    @IBAction func navigationBarBackButtonPressed(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func navigationBarClearButtonPressed(_ sender: UIBarButtonItem) {
    }
    
    private func configureDataSource() {
        
        let cellRegistration = UICollectionView.CellRegistration<SearchResultCollectionViewCell, String>.init(cellNib: SearchResultCollectionViewCell.nib) { (cell, indexPath, item) in
            cell.destinationNameLabel.text = item
            cell.distanceLabel.text = "걸어서 100분"
        }
        
        dataSource = UICollectionViewDiffableDataSource<Section, String>(collectionView: self.searchResultCollectionView) {
            (collectionView: UICollectionView, indexPath: IndexPath, item: String) -> SearchResultCollectionViewCell? in
            print(item)
            // Return the cell.
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: item)
        }
        // initial data
        var snapshot = NSDiffableDataSourceSnapshot<Section, String>()
        snapshot.appendSections([.main])
        let myDesArray = ["대구", "서울", "부산"]
        snapshot.appendItems(myDesArray)
        dataSource.apply(snapshot, animatingDifferences: false)
    }
    
}
