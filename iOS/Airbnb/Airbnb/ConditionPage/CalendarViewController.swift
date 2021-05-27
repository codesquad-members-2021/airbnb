//
//  CalendarViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/05/25.
//

import UIKit

class CalendarViewController: UIViewController {
    
    static let headerElementKind = "header-element-kind"
    
    private var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Date, Day>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configureDataSource()
        applySnapshots()
    }
    
}

//MARK:- Layout & DataSource

extension CalendarViewController {
    
    private func configureHierarchy() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .systemBackground
        collectionView.delegate = self
        collectionView.allowsMultipleSelection = true
        view.addSubview(collectionView)
    }
    
    private func createLayout() -> UICollectionViewLayout {
        let sectionProvider = { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            // section
            let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
            let trailingGroup = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(
                                                                   widthDimension: .fractionalWidth(1),
                                                                   heightDimension: .fractionalWidth(1/7)),
                                                                   subitem: item, count: 7)
            trailingGroup.contentInsets = NSDirectionalEdgeInsets(top: 1, leading: 0, bottom: 0, trailing: 0)
            let containerGroup = NSCollectionLayoutGroup.vertical(
                layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                   heightDimension: .fractionalHeight(0.4)),
                                                  subitems: [trailingGroup])
            let section = NSCollectionLayoutSection(group: containerGroup)
            
            section.interGroupSpacing = 10
            section.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: 10, bottom: 20, trailing: 10)
            
            // header
            self.createSectionHeaderLayout(with: section)
            return section
        }
        return UICollectionViewCompositionalLayout(sectionProvider: sectionProvider)
    }
    
    private func createSectionHeaderLayout(with section: NSCollectionLayoutSection) {
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .estimated(44)),
            elementKind: CalendarViewController.headerElementKind,
            alignment: .top)
        section.boundarySupplementaryItems = [sectionHeader]
    }
    
    private func configureDataSource() {
        
        let listCellRegistration = UICollectionView.CellRegistration<DayCell, Day> { (cell, indexPath, day) in
            cell.fillInfo(with: day.date)
        }
        
        dataSource = UICollectionViewDiffableDataSource<Date, Day>(collectionView: collectionView) {
            (collectionView, indexPath, date) -> UICollectionViewCell? in
            return collectionView.dequeueConfiguredReusableCell(using: listCellRegistration, for: indexPath, item: date)
        }
        self.configureSupplementaryView()
    }
    
    private func configureSupplementaryView() {
        let supplementaryRegistration = UICollectionView.SupplementaryRegistration
        <TitleSupplementaryView>(elementKind: CalendarViewController.headerElementKind) {
            (supplementaryView, string, indexPath) in
            let date = self.dataSource.snapshot().sectionIdentifiers[indexPath.section]
            supplementaryView.label.text = "\(date.year)년 \(date.month)월"
            supplementaryView.label.font = UIFont.preferredFont(forTextStyle: .title2)
        }
        dataSource.supplementaryViewProvider = { (view, kind, index) in
            return self.collectionView.dequeueConfiguredReusableSupplementary(
                using: supplementaryRegistration, for: index)
        }
    }
    
    private func applySnapshots() {
        var snapshot = NSDiffableDataSourceSnapshot<Date, Day>()

        let thisMonth = Date().month
        Array(thisMonth...thisMonth+10).forEach {
            let month = Calendar.current.date(from: DateComponents(year: 2021, month: $0, day: 1)) ?? Date()
            snapshot.appendSections([month])
            snapshot.appendItems(DateGenerator.getTheMonth(year: 2021, month: $0))
        }
        self.dataSource.apply(snapshot)
    }
    
}

//MARK:- Selection

extension CalendarViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) as? DayCell else { return }
        guard let selectedIndexs = collectionView.indexPathsForSelectedItems else { return }
        guard let date = cell.date?.description else { return }
        print(date)
        
        switch selectedIndexs.count {
        case 0:
            break
        case 1:
            cell.selectedType = .one
        case 2:
            let minCell = collectionView.cellForItem(at: selectedIndexs.min()!) as? DayCell ?? DayCell()
            let maxCell = collectionView.cellForItem(at: selectedIndexs.max()!) as? DayCell ?? DayCell()
            minCell.selectedType = .min
            maxCell.selectedType = .max
        default:
            selectedIndexs.forEach { index in
                collectionView.deselectItem(at: index, animated: false)
            }
        }
    }
    
}

