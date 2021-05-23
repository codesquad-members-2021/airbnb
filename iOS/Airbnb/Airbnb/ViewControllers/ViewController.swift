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
    private let mainImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "home"))
        imageView.contentMode = .scaleAspectFill
        let xPosition = imageView.frame.origin.x + 20
        let title = UILabel(frame: CGRect(x: xPosition,
                                          y: imageView.frame.origin.y + 20,
                                          width: imageView.frame.width,
                                          height: 60))
        title.text = "슬기로운 자연생활"
        title.font = UIFont(name: "helvetica", size: 34)
        let subtitle = UILabel(frame: CGRect(x: xPosition,
                                             y: title.frame.origin.y + title.frame.height,
                                             width: imageView.frame.width,
                                             height: 60))
        subtitle.text = "에어비엔비가 엄선한 \n위시리스트를 만나보세요."
        subtitle.numberOfLines = 0
        let button = UILabel(frame: CGRect(x: xPosition,
                                           y: subtitle.frame.origin.y + subtitle.frame.height + 10,
                                           width: 165,
                                           height: 38))
        button.backgroundColor = .systemGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.textAlignment = .center
        button.text = "여행 아이디어 얻기"
        imageView.addSubview(title)
        imageView.addSubview(subtitle)
        imageView.addSubview(button)
        return imageView
    }()
    
    private let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "어디로 여행가세요?"
        return searchBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        navigationItem.titleView = searchBar
        
        collectionView.register(RegionCollectionViewCell.self,
                                forCellWithReuseIdentifier: RegionCollectionViewCell.reuseId)
        collectionView.register(TravelStyleCollectionViewCell.self,
                                forCellWithReuseIdentifier: TravelStyleCollectionViewCell.reuseId)
        collectionView.register(HeaderCollectionReusableView.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                withReuseIdentifier: HeaderCollectionReusableView.reuseId)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        navigationController?.pushViewController(searchViewController, animated: true)
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
            mainImageView.frame = cell.bounds
            cell.contentView.addSubview(mainImageView)
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RegionCollectionViewCell.reuseId, for: indexPath) as! RegionCollectionViewCell
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TravelStyleCollectionViewCell.reuseId, for: indexPath) as! TravelStyleCollectionViewCell
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
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
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if section == 0 { return .zero }
        return CGSize(width: view.frame.width, height: 90)
    }
    
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
