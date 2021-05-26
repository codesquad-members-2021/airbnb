//
//  PlaceListViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/20.
//

import UIKit
import Combine

enum Section {
    case main
}

class TravelListViewController: UIViewController {
    
    typealias DataSource = UICollectionViewDiffableDataSource<Section, NearPlace>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, NearPlace>
    
    @IBOutlet weak var travelList: UICollectionView!
    
    weak var coordinator : SearchCoodinator?
    private lazy var dataSource = makeDataSource()
    @Published private var nearPlaces = [NearPlace]()
    private var cancellables = Set<AnyCancellable>()
    private let searchController = UISearchController(searchResultsController: nil)
    private let removeButton = UIBarButtonItem(title: "지우기",
                                               style: .plain,
                                               target: self,
                                               action: #selector(didTapRemoveButton))
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = removeButton
        self.navigationItem.title = "숙소찾기"
        self.travelList.delegate = self
        
        applySnapshot(animatingDifferences: false)
        makeSectionHeader()
        setUpSearchController()
        registerNib()
        fetchData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationItem.searchController?.isActive = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.dismiss(animated: false, completion: nil)
        super.viewWillDisappear(animated)
    }
    
    @objc func didTapRemoveButton(){
        
    }
}

// MARK: - Functions

extension TravelListViewController {
    
    func makeDataSource() -> DataSource {
        let dataSource = DataSource(
            collectionView: travelList,
            cellProvider: { [weak self] ( collectionview, indexPath, card) -> UICollectionViewCell? in
                let cell = collectionview.dequeueReusableCell(withReuseIdentifier: NearPlaceCell.reuseIdentifier, for: indexPath)
                    as? NearPlaceCell
                cell?.areaTitle.text = self?.nearPlaces[indexPath.row].name
                cell?.timeRequired.text = String(self?.nearPlaces[indexPath.row].distance ?? 0)
                if let url = self?.nearPlaces[indexPath.row].avatarUrl {
                    cell?.thumbnail.downloadImage(from: url){
                        cell?.activityIndicator.stopAnimating()
                        cell?.activityIndicator.isHidden = true
                    }
                }
                return cell
            })
        return dataSource
    }
    
    func makeSectionHeader(){
        self.dataSource.supplementaryViewProvider = { collectionView, kind, indexPath in
            guard kind == UICollectionView.elementKindSectionHeader else {
                return nil
            }
            let headerView = collectionView
                .dequeueReusableSupplementaryView(ofKind: kind,
                                                  withReuseIdentifier: HeaderReusableView.reuseIdentifier,
                                                  for: indexPath) as? HeaderReusableView
            return headerView
        }
    }
    
    func applySnapshot(animatingDifferences: Bool = true) {
        var snapshot = Snapshot()
        snapshot.appendSections([.main])
        snapshot.appendItems(nearPlaces)
        dataSource.apply(snapshot, animatingDifferences: animatingDifferences)
    }
    
    func fetchData(){
        $nearPlaces.receive(on: DispatchQueue.main)
            .sink(receiveValue: {[weak self] _ in
                self?.applySnapshot()
            })
            .store(in: &cancellables)
        
        TravelListAPI.loadTravelList(type: .search)
            .sink(receiveCompletion: { _ in },
                  receiveValue: { places in
                    for place in places {
                        self.nearPlaces.append(place.toNearPlace())
                    }
                  }).store(in: &cancellables)
    }
    
    func setUpSearchController() {
        definesPresentationContext = true
        
        searchController.searchResultsUpdater = self
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        searchController.searchBar.sizeToFit()
        searchController.automaticallyShowsCancelButton = false
        searchController.obscuresBackgroundDuringPresentation = false
        
        self.navigationItem.hidesSearchBarWhenScrolling = false
        self.navigationItem.searchController = searchController
        self.navigationItem.searchController?.delegate = self
    }
    
    func registerNib() {
        let nib = UINib(nibName: NearPlaceCell.nibName, bundle: nil)
        travelList?.register(nib, forCellWithReuseIdentifier: NearPlaceCell.reuseIdentifier)
        let headerNib = UINib(nibName: HeaderReusableView.nibName, bundle: nil)
        travelList?.register(headerNib, forCellWithReuseIdentifier: HeaderReusableView.reuseIdentifier)
    }
}

extension TravelListViewController : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        coordinator?.choosePlace()
    }
}

extension TravelListViewController: UISearchControllerDelegate {
    
    func didPresentSearchController(_ searchController: UISearchController) {
        DispatchQueue.main.async {
            searchController.searchBar.becomeFirstResponder()
        }
    }
}

extension TravelListViewController : UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
    }
}

extension TravelListViewController : Storyboarded {
    
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Search", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
