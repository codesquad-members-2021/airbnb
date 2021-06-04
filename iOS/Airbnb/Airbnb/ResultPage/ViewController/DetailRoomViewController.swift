//
//  DetailRoomViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/06/04.
//

import UIKit

class DetailRoomViewController: UIViewController {

    static let reuseIdentifier = "DetailRoomViewController"
    static let nib = UINib(nibName: DetailRoomViewController.reuseIdentifier, bundle: nil)
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var hostLabel: UILabel!
    @IBOutlet weak var hostImageView: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    private var dataSource: UICollectionViewDiffableDataSource<Int, UIImage>!
    private var roomViewModel: RoomViewModel!
    private var conditionViewModel: ConditionViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavi()
        configureHierarchy()
        configureDataSource()
        applySnapshots()
    }
    
}


extension DetailRoomViewController {
    
    func setViewModels(conditionViewModel: ConditionViewModel, roomViewModel: RoomViewModel) {
        self.conditionViewModel = conditionViewModel
        self.roomViewModel = roomViewModel
    }
    
}


extension DetailRoomViewController: UICollectionViewDelegate {
    
    private func configureHierarchy() {
        collectionView.collectionViewLayout = createLayout()
        collectionView.backgroundColor = .systemBackground
        collectionView.delegate = self
    }
    
    private func createLayout() -> UICollectionViewLayout {
        
        let sectionProvider = { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
            let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
            
            let section = NSCollectionLayoutSection(group: group)
            section.orthogonalScrollingBehavior = .groupPaging
            
            return section
        }
        return UICollectionViewCompositionalLayout(sectionProvider: sectionProvider)
    }
    
    private func configureDataSource() {
        let cellRegistration = UICollectionView.CellRegistration<RoomCell, UIImage> { (cell, indexPath, image) in
            cell.fillUI(with: image)
        }
        
        dataSource = UICollectionViewDiffableDataSource<Int, UIImage>(collectionView: collectionView) {
            (collectionView: UICollectionView, indexPath: IndexPath, image: UIImage) -> RoomCell? in
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: image)
        }
    }
    
    private func applySnapshots() {
        roomViewModel.getDetailImages { images in
            var snapshot = NSDiffableDataSourceSnapshot<Int, UIImage>()
            snapshot.appendSections([1])
            snapshot.appendItems(images, toSection: 1)
            self.dataSource.apply(snapshot)
        }
    }
    
}


extension DetailRoomViewController {
    
    private func configureNavi() {
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }

}


extension DetailRoomViewController {
    
    @IBAction func backButtonTouched(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
