//
//  ViewController.swift
//  JacksonBnB
//
//  Created by jinseo park on 5/18/21.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet weak var mainView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let animationView = AnimationView(name: "airbnb-logo")
        mainView.addSubview(animationView)
        animationView.play()        
    }
    
}

