//
//  LocationViewController.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/17.
//

import UIKit
import Combine
import GooglePlaces

final class LocationViewController: UIViewController {
    
    @IBOutlet weak var cityCollectionView: UICollectionView!
    
    
    private var searchController : UISearchController?
    private var resultsViewController: GMSAutocompleteResultsViewController?
    private var locationManager: LocationManager!
    lazy var cancelButton = UIBarButtonItem(title: "지우기", style: .done, target: self, action: #selector(tappedCancelButton))

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchResultsController()
        configureNavigationItem()
        configureSearchController()
        registerNib()
        cityCollectionView.dataSource = self
    }

    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    private func configureNavigationItem() {
        self.navigationItem.title = "숙소 찾기"
        self.navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    private func configureSearchController() {
        searchController = UISearchController(searchResultsController: resultsViewController)
        searchController?.searchResultsUpdater = resultsViewController
        searchController?.searchBar.delegate = self
        searchController?.searchBar.sizeToFit()
        searchController?.hidesNavigationBarDuringPresentation = false
        searchController?.automaticallyShowsCancelButton = false
        searchController?.searchBar.placeholder = "어디로 여행가세요?"
        searchController?.searchBar.searchTextField.clearButtonMode = .never
        self.navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    private func configureSearchResultsController() {
        resultsViewController = GMSAutocompleteResultsViewController()
        resultsViewController?.delegate = self
    }
    
    private func registerNib() {
        let nib = UINib(nibName: CityCollectionViewCell.nibName, bundle: nil)
        cityCollectionView.register(nib, forCellWithReuseIdentifier: CityCollectionViewCell.identifier)
    }
    
    func getLocationManager(manager: LocationManager) {
        self.locationManager = manager
    }
    
    @objc func tappedCancelButton() {
        self.searchController?.searchBar.text = ""
    }
}

extension LocationViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return locationManager.mainLayout?.cities.count ?? 0
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CityCollectionViewCell.identifier, for: indexPath) as! CityCollectionViewCell
        cell.location.text = locationManager.mainLayout?.cities[indexPath.row].cityName
        let url = locationManager.mainLayout!.cities[indexPath.row].cityImage
        cell.locationImage.load(with: url)
        return cell
    }
}

extension LocationViewController: GMSAutocompleteResultsViewControllerDelegate {
    func resultsController(_ resultsController: GMSAutocompleteResultsViewController, didAutocompleteWith place: GMSPlace) {
        searchController?.isActive = false
        let dateViewController = storyboard?.instantiateViewController(identifier: "DateViewController") as! DateViewController
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            self.navigationController?.pushViewController(dateViewController, animated: true)
        }
    }
    
    func resultsController(_ resultsController: GMSAutocompleteResultsViewController, didFailAutocompleteWithError error: Error) {
        print("Error: ", error.localizedDescription)
    }
}

extension LocationViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            navigationItem.setRightBarButton(nil, animated: false)
        } else {
            navigationItem.rightBarButtonItem = cancelButton
        }
    }
}
