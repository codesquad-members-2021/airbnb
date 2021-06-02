//
//  SearchViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit
import Combine

class SearchViewController : UIViewController {
    
    typealias DataSource = UICollectionViewDiffableDataSource<Section, NearPlace>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Section, NearPlace>
    
    @IBOutlet weak var nearPlaceCollection: UICollectionView!
    @IBOutlet weak var themePlaceCollection: UICollectionView!
    
    private let searchBar : UISearchBar = {
        let bar = UISearchBar()
        bar.placeholder = "어디로 여행가세요?"
        return bar
    }()
    
    weak var coordinator : SearchCoodinator?
    private var nearPlaceDataSource : DataSource? = nil
    @Published private var places = [NearPlace]()
    private var themePlaceDataSource = ThemePlaceDataSource()
    private var cancellables = Set<AnyCancellable>()
    
    // MARK: - Constant
    
    private let limitCountOfNearPlace = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.titleView = searchBar
        searchBar.delegate = self
        nearPlaceDataSource = makeDataSource()
        nearPlaceCollection.dataSource = nearPlaceDataSource
        themePlaceCollection.dataSource = themePlaceDataSource
        
        fetchData()
        registerNib()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func registerNib() {
        let nib = UINib(nibName: NearPlaceCell.nibName, bundle: nil)
        nearPlaceCollection?.register(nib, forCellWithReuseIdentifier: NearPlaceCell.reuseIdentifier)
        let headerNib = UINib(nibName: HeaderReusableView.nibName, bundle: nil)
        nearPlaceCollection?.register(headerNib, forCellWithReuseIdentifier: HeaderReusableView.reuseIdentifier)
        
        let specialNib = UINib(nibName: ThemePlaceCell.nibName, bundle: nil)
        themePlaceCollection?.register(specialNib, forCellWithReuseIdentifier: ThemePlaceCell.reuseIdentifier)
        themePlaceCollection?.register(headerNib, forCellWithReuseIdentifier: HeaderReusableView.reuseIdentifier)
    }

    func makeDataSource() -> DataSource {
        let dataSource = DataSource(
            collectionView: nearPlaceCollection,
            cellProvider: { ( collectionview, indexPath, card) -> UICollectionViewCell? in
                let cell = collectionview.dequeueReusableCell(withReuseIdentifier: NearPlaceCell.reuseIdentifier, for: indexPath) as? NearPlaceCell
                cell?.bind(with: self.places[indexPath.row])
                return cell
            })
        return dataSource
    }

    func fetchData(){
        $places.receive(on: DispatchQueue.main)
            .sink(receiveValue: { [weak self] _ in
                self?.applySnapshot()
            })
            .store(in: &cancellables)
       
        TravelListAPI.loadTravelList(type: .search, with: limitCountOfNearPlace)
            .sink(receiveCompletion: { _ in },
                  receiveValue: { [weak self] responses in
                    self?.places = responses.map{ $0.toNearPlace() }
            }).store(in: &cancellables)
    }
    
    func applySnapshot(animatingDifferences: Bool = true) {
        var snapshot = Snapshot()
        snapshot.appendSections([.main])
        snapshot.appendItems(places)
        nearPlaceDataSource?.apply(snapshot, animatingDifferences: animatingDifferences)
    }
}

extension SearchViewController : UISearchBarDelegate {
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        coordinator?.start()
        return false
    }
}

extension SearchViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let width: CGFloat = collectionView.frame.width
        let height: CGFloat = 28
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
    }
}

extension SearchViewController : Storyboarded {
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Search", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
