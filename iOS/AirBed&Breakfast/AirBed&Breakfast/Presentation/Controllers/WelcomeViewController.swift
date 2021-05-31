//
//  ViewController.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/17.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var heroImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let numberADView = NumberAdjustmentView()
        
        numberADView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(numberADView)
        
        numberADView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        numberADView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        numberADView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3).isActive = true
    }
    
}

