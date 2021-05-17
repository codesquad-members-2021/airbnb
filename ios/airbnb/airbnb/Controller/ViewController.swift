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
    }
    
    private func addTapGesture() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(tapped))
        searchView.addGestureRecognizer(gesture)
    }
    
    @objc func tapped() {
        guard let viewController = storyboard?.instantiateViewController(identifier: "location") as? LocationViewController else { return }
        present(viewController, animated: true, completion: nil)
    }

}

