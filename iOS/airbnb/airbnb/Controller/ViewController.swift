//
//  ViewController.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/17.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
   
    @IBOutlet weak var tripPlaceCollectionView: UICollectionView!
    private var tripPlaceCollectionViewDataSource: TripPlaceCollectionViewDataSource
    
    @IBOutlet weak var recommendTripCollectionView: UICollectionView!
    private var recommendTripCollectionViewDataSource: RecommendTripCollectionViewDataSource
    
    private var searchBar: UISearchBar!
    private let network = Network()
    private var mainPage = MainPageDTO(locations: [], categories: [])
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.tripPlaceCollectionViewDataSource = TripPlaceCollectionViewDataSource(tripPlace: [])
        self.recommendTripCollectionViewDataSource = RecommendTripCollectionViewDataSource(recommendTrip: [])
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        self.tripPlaceCollectionViewDataSource = TripPlaceCollectionViewDataSource(tripPlace: [])
        self.recommendTripCollectionViewDataSource = RecommendTripCollectionViewDataSource(recommendTrip: [])
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        self.searchBar = UISearchBar.init(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 35))
        self.tripPlaceCollectionView.dataSource = tripPlaceCollectionViewDataSource
        self.recommendTripCollectionView.dataSource = recommendTripCollectionViewDataSource
        super.viewDidLoad()
        setupSearchBar()
        self.fetchMainPage()
        
        NotificationCenter.default.addObserver(self, selector: #selector(reloadTripPlaceCollectionView), name: Notification.tripPlaceDataUpdate, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(reloadRecommendTripCollectionView), name: Notification.recommendTripDataUpdate, object: nil)
    }
    
    func fetchMainPage() {
        let mainEndpoint = MainAPIEndPoint(path: "/main", httpMethod: .get)
        network.request(with: mainEndpoint, dataType: MainPageDTO.self) { (result) in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let data):
                self.mainPage = data
                self.mainPage.update()
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let nextViewController = segue.destination as? SearchViewController else {
            return
        }
        nextViewController.configure(tripPlace: mainPage.locations)
    }
    
    @objc func reloadTripPlaceCollectionView() {
        tripPlaceCollectionViewDataSource.updateTripPlace(tripPlace: mainPage.locations)
        tripPlaceCollectionView.reloadData()
    }
    
    @objc func reloadRecommendTripCollectionView() {
        recommendTripCollectionViewDataSource.updateRecommendTrip(recommendTrip: mainPage.categories)
        recommendTripCollectionView.reloadData()
    }
    
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        self.performSegue(withIdentifier: "result", sender: nil)
        return false
    }
    
    private func setupSearchBar() {
        self.navigationItem.titleView = self.searchBar
        self.searchBar.placeholder = "어디로 여행가세요?"
        self.searchBar.delegate = self
    }
}
