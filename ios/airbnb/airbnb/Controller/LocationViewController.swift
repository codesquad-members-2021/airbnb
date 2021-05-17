//
//  LocationViewController.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/17.
//

import UIKit

class LocationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addGesture()
//        navigationController?.navigationItem.backBarButtonItem?.title = "뒤로"
        let searchController = UISearchController(searchResultsController: nil)
        searchController.hidesNavigationBarDuringPresentation = false
        self.navigationItem.searchController = searchController
        self.navigationItem.title = "숙소 찾기"
    }
    
    func addGesture() {
        let edgePenGesture = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(popViewControllerOnScreenEdgeSwipe(sender:)))
        edgePenGesture.edges = .left
        view.addGestureRecognizer(edgePenGesture)
    }
    
    @objc func popViewControllerOnScreenEdgeSwipe(sender: UIScreenEdgePanGestureRecognizer) {
        if sender.state == .recognized {
            self.dismiss(animated: true, completion: nil)
        }
    }
}
