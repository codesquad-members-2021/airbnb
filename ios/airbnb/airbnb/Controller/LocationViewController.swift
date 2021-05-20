//
//  LocationViewController.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/17.
//

import UIKit

struct DetailCity {
    let name: String
}

final class LocationViewController: UIViewController {
    
    @IBOutlet weak var cityCollectionView: UICollectionView!
    
    private let searchController = UISearchController(searchResultsController: nil)
    private var locationManager: LocationManager!
//    var cities = [City(name: "seoul"), City(name: "busan")]
    var detailCities = [DetailCity(name: "songpa"), DetailCity(name: "jamsil")]

    override func viewDidLoad() {
        super.viewDidLoad()

        
        configureNavigationItem()
        configureSearchController()
        registerNib()
//        cityCollectionView.dataSource = self
        cityCollectionView.delegate = self
        searchController.searchResultsUpdater = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    private func configureNavigationItem() {
        self.navigationItem.title = "숙소 찾기"
        let cancel = UIBarButtonItem(title: "지우기", style: .done, target: self, action: #selector(tappedDeleteBarButton))
        self.navigationItem.rightBarButtonItem = cancel
        self.navigationItem.hidesSearchBarWhenScrolling = false

    }
    
    private func configureSearchController() {
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.automaticallyShowsCancelButton = false
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        self.navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    private func registerNib() {
        let nib = UINib(nibName: "CityCollectionViewCell", bundle: nil)
        cityCollectionView.register(nib, forCellWithReuseIdentifier: "cell")
    }
    
    @objc func tappedDeleteBarButton() {
        
    }
    
    private func searchBarIsEmpty() -> Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    private func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }
}

//extension LocationViewController: UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        if isFiltering() {
//            return cities.count
//        } else {
//            return detailCities.count
//        }
//
//    }
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CityCollectionViewCell
//
//        if isFiltering() {
//            cell.location.text = detailCities[indexPath.row].name
//            cell.distance.isHidden = true
//        } else {
//            cell.location.text = cities[indexPath.row].name
//            cell.distance.isHidden = false
//        }
//        return cell
//    }
//}

extension LocationViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        self.cityCollectionView.reloadData()
    }
}

extension LocationViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.view.bounds.width
        return CGSize(width: width, height: 60)
    }
}
