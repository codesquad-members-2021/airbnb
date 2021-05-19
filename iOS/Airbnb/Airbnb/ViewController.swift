//
//  ViewController.swift
//  Airbnb
//
//  Created by Ador on 2021/05/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        return searchBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        navigationItem.titleView = searchBar
        
        collectionView.register(LocationCollectionViewCell.self,
                                forCellWithReuseIdentifier: LocationCollectionViewCell.reuseId)
        collectionView.register(StyleCollectionViewCell.self,
                                forCellWithReuseIdentifier: StyleCollectionViewCell.reuseId)
        collectionView.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.reuseId)
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        navigationController?.pushViewController(SearchViewController(), animated: true)
    }
}

extension ViewController: UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            let image = UIImageView(image: UIImage(named: "home"))
            image.contentMode = .scaleAspectFill
            image.frame = cell.bounds
            cell.contentView.addSubview(image)
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LocationCollectionViewCell.reuseId, for: indexPath) as! LocationCollectionViewCell
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StyleCollectionViewCell.reuseId, for: indexPath) as! StyleCollectionViewCell
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    // Section Header
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCollectionReusableView.reuseId, for: indexPath) as! HeaderCollectionReusableView
        switch indexPath.section {
        case 1:
            header.configure(title: "가까운 여행지 둘러보기")
        case 2:
            header.configure(title: "어디에서나 여행은 \n살아보는거야!")
        default:
            break
        }
        return header
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    // 헤더의 높이
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if section == 0 { return .zero }
        return CGSize(width: view.frame.width, height: 90)
    }
    
    // 섹션별 아이템 사이즈
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.section {
        case 0:
            return CGSize(width: view.frame.width, height: view.frame.width)
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
