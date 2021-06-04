//
//  MapViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/06/04.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    var pointAnnotation: MKPointAnnotation!
    var pinAnnotationView: MKPinAnnotationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
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
