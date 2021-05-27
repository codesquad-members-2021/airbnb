//
//  ViewController.swift
//  Airbnb
//
//  Created by Ador on 2021/05/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let searchViewController = SearchViewController()
    private let dataSource = MainCollectionViewDataSource()
    
    private let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "어디로 여행가세요?"
        return searchBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        navigationItem.titleView = searchBar
        
        setupCollectionView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
    }
    
    private func setupCollectionView() {
        collectionView.register(MainCollectionViewCell.self,
                                forCellWithReuseIdentifier: MainCollectionViewCell.reuseId)
        collectionView.register(HeaderCollectionReusableView.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                withReuseIdentifier: HeaderCollectionReusableView.reuseId)
        collectionView.register(ImageHeaderCollectionReusableView.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                withReuseIdentifier: ImageHeaderCollectionReusableView.reuseId)
        collectionView.dataSource = dataSource
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        navigationController?.pushViewController(searchViewController, animated: true)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if section == 0 {
            return CGSize(width: view.frame.width, height: view.frame.width)
        }
        return CGSize(width: view.frame.width, height: 90)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.section {
        case 1:
            return CGSize(width: view.frame.width, height: 74 * 2 + 30)
        case 2:
            return CGSize(width: view.frame.width, height: 308)
        default:
            break
        }
        return .zero
    }
}
