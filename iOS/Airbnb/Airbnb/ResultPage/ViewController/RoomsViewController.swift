//
//  RoomsViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/06/03.
//

import UIKit
import Combine

class RoomsViewController: UIViewController {

    static let headerElementKind = "header-element-kind"
    
    private var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Int, Int>!
    private let roomsUseCase = RoomsUseCase()
    private var cancelBag = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}


extension RoomsViewController {
    
    private func bind() {
        roomsUseCase.$rooms.receive(on: DispatchQueue.main)
            .sink { rooms in
                guard let rooms = rooms else { return }
                self.applySnapshots(with: rooms)
            }
            .store(in: &cancelBag)
        
        roomsUseCase.$error
            .receive(on: DispatchQueue.main)
            .sink { error in
                guard let error = error else { return }
                print(error) ///사용자에게 에러 표시하는 부분 미구현
            }.store(in: &cancelBag)
    }
    
}


extension RoomsViewController {
    
    private func configureHierarchy() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .systemBackground
        collectionView.delegate = self
        view.addSubview(collectionView)
    }
    
    private func createLayout() -> UICollectionViewLayout {
        
        let sectionProvider = { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
            
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(1))
            let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
            
            let section = NSCollectionLayoutSection(group: group)
            section.interGroupSpacing = 10
            section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
            

            let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                   heightDimension: .estimated(44)),
                elementKind:RoomsViewController.headerElementKind,
                alignment: .top)
            section.boundarySupplementaryItems = [sectionHeader]
            
            return section
        }
        return UICollectionViewCompositionalLayout(sectionProvider: sectionProvider)
    }
    
    private func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Int, Int>(collectionView: collectionView) {
            (collectionView, indexPath, item) -> UICollectionViewCell? in

                self.collectionView.register(AccommodationCell.nib, forCellWithReuseIdentifier: AccommodationCell.reuseIdentifier)
                let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: AccommodationCell.reuseIdentifier, for: indexPath) as! AccommodationCell
//                cell.fillUI(with: item.city ?? City(id: 0, name: "", image: "", distance: 0))
                return cell
        }
        self.configureSupplementaryView()
    }
    
    private func configureSupplementaryView() {
        let supplementaryRegistration = UICollectionView.SupplementaryRegistration
        <RoomsSupplementaryView>(elementKind: RoomsViewController.headerElementKind) {
            (supplementaryView, string, indexPath) in
//            let sectionKind = Section(rawValue: indexPath.section)!
            supplementaryView.label.text = "~~~"//String(describing: sectionKind)
        }
        dataSource.supplementaryViewProvider = { (view, kind, index) in
            return self.collectionView.dequeueConfiguredReusableSupplementary(
                using: supplementaryRegistration, for: index)
        }
    }
    
    private func applySnapshots(with rooms: Rooms) {
        var snapshot = NSDiffableDataSourceSnapshot<Int, Int>()
        snapshot.appendSections([1])
        snapshot.appendItems([1], toSection: 1)
        dataSource.apply(snapshot)
    }
    
}

extension RoomsViewController: UICollectionViewDelegate {
    
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

