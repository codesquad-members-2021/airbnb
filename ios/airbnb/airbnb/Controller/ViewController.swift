//
//  ViewController.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/17.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var searchView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addTapGesture()
        self.navigationController?.navigationBar.isHidden = true
    }
    
    private func addTapGesture() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(tapped))
        searchView.addGestureRecognizer(gesture)
    }
    
    @objc func tapped() {
        performSegue(withIdentifier: "local", sender: self)
    }

}

