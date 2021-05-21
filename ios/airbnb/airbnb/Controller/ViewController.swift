//
//  ViewController.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/17.
//

import UIKit
import Combine

final class ViewController: UIViewController {
    
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var curationImage: UIImageView!
    @IBOutlet weak var spotTitle: UILabel!
    private var locationManager: LocationManager!
    private var cancelable = Set<AnyCancellable>()
    @IBOutlet weak var cityCollectionView: UICollectionView!
    @IBOutlet weak var spotCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let networkManager = NetworkManager()
        locationManager = LocationManager(getDataManager: networkManager)
        locationManager.fetchCitiesLocation()
        addTapGesture()
        bind()
        registerNib()
        cityCollectionView.dataSource = self
        spotCollectionView.dataSource = self
        spotTitle.text = "어디에서나, 여행은\n살아보는거야"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func registerNib() {
        let cityNib = UINib(nibName: CityCollectionViewCell.nibName, bundle: nil)
        let spotNib = UINib(nibName: SpotCollectionViewCell.nibName, bundle: nil)
        cityCollectionView.register(cityNib, forCellWithReuseIdentifier: CityCollectionViewCell.identifier)
        spotCollectionView.register(spotNib, forCellWithReuseIdentifier: SpotCollectionViewCell.identifier)
    }
    
    private func addTapGesture() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(tapped))
        searchView.addGestureRecognizer(gesture)
    }
    
    @objc func tapped() {
        performSegue(withIdentifier: "local", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let locationController = segue.destination as? LocationViewController else { return }
        locationController.getLocationManager(manager: self.locationManager)
    }
    
    func bind() {
        locationManager.$mainImageData
            .receive(on: DispatchQueue.main)
            .sink { [weak self] data in
                guard let data = data else { return }
                self?.curationImage.image = UIImage(data: data)
            }
            .store(in: &self.cancelable)
        
        locationManager.$mainLayout
            .receive(on: DispatchQueue.main)
            .sink { [weak self] mainlayout in
                self?.cityCollectionView.reloadData()
                self?.spotCollectionView.reloadData()
            }
            .store(in: &self.cancelable)
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cityCollectionView {
            return locationManager.mainLayout?.cities.count ?? 0
        } else {
            return locationManager.mainLayout?.extraImages.count ?? 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cityCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CityCollectionViewCell.identifier, for: indexPath) as! CityCollectionViewCell
            let image = UIImage(data: locationManager.cityImagesData[indexPath.row])
            cell.locationImage.image = image
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SpotCollectionViewCell.identifier, for: indexPath) as! SpotCollectionViewCell
            let image = UIImage(data: locationManager.extraImagesData[indexPath.row])
            cell.spotImage.image = image
            return cell
        }
    }
    
    
}
