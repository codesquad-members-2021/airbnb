//
//  MapViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/06/04.
//

import UIKit
import Combine
import MapKit

class MapViewController: UIViewController {
    
    static let reuseIdentifier = "MapViewController"
    static let nib = UINib(nibName: MapViewController.reuseIdentifier, bundle: nil)
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Int, Room>!
    private var conditionViewModel: ConditionViewModel!
    private let roomsUseCase = RoomsUseCase()
    private var cancelBag = Set<AnyCancellable>()
    
    let locationManager = CLLocationManager()
    var pointAnnotation: MKPointAnnotation!
    var pinAnnotationView: MKPinAnnotationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roomsUseCase.requestPirce(condition: conditionViewModel.convertCodable())
        configure()
        configureNavi()
        configureHierarchy()
        configureDataSource()
        bind()
        
        setAnnotation(latitude: 37.3826616, longitude: 126.840719, delta: 0.5)
        setAnnotation(latitude: 37.6447360, longitude: 127.005575, delta: 0.5)
    }
    
}


extension MapViewController: MKMapViewDelegate, CLLocationManagerDelegate {
    
    private func configure() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        mapView.delegate = self
        mapView.mapType = .standard
        mapView.showsUserLocation = true
    }
    
    private func setAnnotation(latitude: CLLocationDegrees, longitude: CLLocationDegrees, delta span :Double) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = moveToLocation(latitude: latitude, longtude: longitude, delta: span)
        mapView.addAnnotation(annotation)
    }
    
    private func moveToLocation(latitude: CLLocationDegrees, longtude: CLLocationDegrees, delta span: Double) -> CLLocationCoordinate2D {
        let location = CLLocationCoordinate2DMake(latitude, longtude)
        let spanValue = MKCoordinateSpan(latitudeDelta: span, longitudeDelta: span)
        let region = MKCoordinateRegion(center: location, span: spanValue)
        mapView.setRegion(region, animated: true)
        return location
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let reuseIdentifier = "label"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseIdentifier)

        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: reuseIdentifier)
            annotationView?.canShowCallout = true
        } else {
            annotationView?.annotation = annotation
        }
        annotationView?.addSubview(configureLabel())
        
        return annotationView
    }
    
    private func configureLabel() -> UILabel {
        let label = UILabel()
        label.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 60, height: 40))
        label.translatesAutoresizingMaskIntoConstraints = false
        label.widthAnchor.constraint(greaterThanOrEqualTo: label.heightAnchor, multiplier: 1, constant: 80).isActive = true
        label.heightAnchor.constraint(greaterThanOrEqualTo: label.heightAnchor, multiplier: 1).isActive = true
        label.layer.cornerRadius = 5
        label.layer.masksToBounds = true
        label.backgroundColor = .white
        label.textAlignment = .center
        label.text = "₩201,599"
        
        return label
    }
    
}


extension MapViewController {
    
    private func bind() {
        roomsUseCase.$rooms.receive(on: DispatchQueue.main)
            .sink { rooms in
                guard let rooms = rooms else { return }
                self.applySnapshots(with: rooms.rooms)
            }
            .store(in: &cancelBag)
        
        roomsUseCase.$error
            .receive(on: DispatchQueue.main)
            .sink { error in
                guard let error = error else { return }
                print(error) ///사용자에게 에러 표시하는 부분 미구현
            }.store(in: &cancelBag)
    }

    func setViewModels(conditionViewModel: ConditionViewModel) {
        self.conditionViewModel = conditionViewModel
    }
    
}


extension MapViewController: UICollectionViewDelegate {
    
    private func configureHierarchy() {
        collectionView.collectionViewLayout = createLayout()
        collectionView.backgroundColor = .systemBackground
        collectionView.delegate = self
    }
    
    private func createLayout() -> UICollectionViewLayout {
        let sectionProvider = { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
            
            let section = NSCollectionLayoutSection(group: group)
            section.orthogonalScrollingBehavior = .groupPaging
            
            return section
        }
        return UICollectionViewCompositionalLayout(sectionProvider: sectionProvider)
    }
    
    private func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Int, Room>(collectionView: collectionView) {
            (collectionView, indexPath, room) -> UICollectionViewCell? in
                self.collectionView.register(RoomOrthoCell.nib, forCellWithReuseIdentifier: RoomOrthoCell.reuseIdentifier)
                let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: RoomOrthoCell.reuseIdentifier, for: indexPath) as! RoomOrthoCell
                cell.fillUI(with: room)
                return cell
                
        }
    }
    
    private func applySnapshots(with rooms: [Room]) {
        var snapshot = NSDiffableDataSourceSnapshot<Int, Room>()
        snapshot.appendSections([1])
        snapshot.appendItems(rooms, toSection: 1)
        dataSource.apply(snapshot)
    }
    
}


extension MapViewController {
    
    private func configureNavi() {
        self.tabBarController?.tabBar.isHidden = true
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func backButtonTouched(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
