//
//  RecommandedDestinationViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/05/20.
//

import UIKit
import Combine

class RecommendedDestinationViewController: UIViewController {
    
    static let headerElementKind = "header-element-kind"
    
    enum Section: Int, Hashable, CaseIterable, CustomStringConvertible {
        case near, category
        
        var description: String {
            switch self {
            case .near: return "가까운 여행지 둘러보기"
            case .category: return "어디에서나, 여행은 살아보는거야!"
            }
        }
    }
    
    struct Item: Hashable {
        let city: City?
        let category: Category?
        init(city: City? = nil, category: Category? = nil) {
            self.city = city
            self.category = category
        }
        private let identifier = UUID()
    }
    
    private var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Section, Item>!
    
    private let viewModel = MainPageViewModel()
    private var cancelBag = Set<AnyCancellable>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.requestMainPage()
        bind()
        
        configureHierarchy()
        configureDataSource()
    }
    
}


extension RecommendedDestinationViewController {
    
    private func bind() {
        viewModel.$mainPage.receive(on: DispatchQueue.main)
            .sink { mainPage in
                guard let mainPage = mainPage else { return }
                self.applyInitialSnapshots(with: mainPage)
            }
            .store(in: &cancelBag)
        
        viewModel.$error
            .receive(on: DispatchQueue.main)
            .sink { error in
                guard let error = error else { return }
                print(error) ///사용자에게 에러 표시하는 부분 미구현
            }.store(in: &cancelBag)
    }
    
}


extension RecommendedDestinationViewController {
    
    private func configureHierarchy() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .systemBackground
        collectionView.delegate = self
        view.addSubview(collectionView)
    }
    
    /// - Tag: CreateFullLayout
    private func createLayout() -> UICollectionViewLayout {
        
        let sectionProvider = { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            guard let sectionKind = Section(rawValue: sectionIndex) else { return nil }
            let section: NSCollectionLayoutSection
            
            switch sectionKind {
            case .near:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
                
                let smallgroup = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0)), subitem: item, count: 2)
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.68), heightDimension: .fractionalWidth(0.5))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [smallgroup])
                
                section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 10
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 20, trailing: 10)
                
            case .category:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                item.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.7), heightDimension: .fractionalHeight(0.6))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
                
                section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 10
                section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
                section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 20, trailing: 10)
            }
            
            let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                   heightDimension: .estimated(44)),
                elementKind: RecommendedDestinationViewController.headerElementKind,
                alignment: .top)
            section.boundarySupplementaryItems = [sectionHeader]
            
            return section
        }
        return UICollectionViewCompositionalLayout(sectionProvider: sectionProvider)
    }
    
    private func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView) {
            (collectionView, indexPath, item) -> UICollectionViewCell? in
            guard let section = Section(rawValue: indexPath.section) else { fatalError("Unknown section") }
            
            switch section {
            case .near:
                self.collectionView.register(CityCell.nib, forCellWithReuseIdentifier: CityCell.reuseIdentifier)
                let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: CityCell.reuseIdentifier, for: indexPath) as! CityCell
                cell.fillUI(with: item.city ?? City(id: 0, name: "", image: "", distance: 0))
                return cell
                
            case .category:
                self.collectionView.register(CategoryCell.nib, forCellWithReuseIdentifier: CategoryCell.reuseIdentifier)
                let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCell.reuseIdentifier, for: indexPath) as! CategoryCell
                cell.fillUI(with: item.category ?? Category(category: "", image: ""))
                return cell
            }
        }
        self.configureSupplementaryView()
    }
    
    private func configureSupplementaryView() {
        let supplementaryRegistration = UICollectionView.SupplementaryRegistration
        <TitleSupplementaryView>(elementKind: RecommendedDestinationViewController.headerElementKind) {
            (supplementaryView, string, indexPath) in
            let sectionKind = Section(rawValue: indexPath.section)!
            supplementaryView.label.text = String(describing: sectionKind)
        }
        dataSource.supplementaryViewProvider = { (view, kind, index) in
            return self.collectionView.dequeueConfiguredReusableSupplementary(
                using: supplementaryRegistration, for: index)
        }
    }
    
    private func applyInitialSnapshots(with mainPage: MainPage) {
        let sections = Section.allCases
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections(sections)
        dataSource.apply(snapshot, animatingDifferences: false)
        
        let cityItems = mainPage.cities.map { Item(city: $0) }
        var citySnapshot = NSDiffableDataSourceSectionSnapshot<Item>()
        citySnapshot.append(cityItems)
        dataSource.apply(citySnapshot, to: .near, animatingDifferences: false)
        
        let categoryItems = mainPage.categories.map { Item(category: $0) }
        var categorySnapshot = NSDiffableDataSourceSectionSnapshot<Item>()
        categorySnapshot.append(categoryItems)
        dataSource.apply(categorySnapshot, to: .category, animatingDifferences: false)
    }
    
}


//MARK:- selection

extension RecommendedDestinationViewController: UICollectionViewDelegate {
    
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

