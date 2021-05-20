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
    private var locationManager: LocationManager!
    private var cancelable = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        let networkManager = NetworkManager()
        locationManager = LocationManager(getDataManager: networkManager)
        locationManager.fetchCitiesLocation()
        addTapGesture()
        bind()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
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
            }.store(in: &self.cancelable)
    }
}

