//
//  ViewController.swift
//  JacksonBnB
//
//  Created by jinseo park on 5/18/21.
//

import UIKit
import Lottie

class MainViewController: UIViewController {

    @IBOutlet weak var mainView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let lottieAnimation = LottieAnimation(with: self.view)
//        let animationView = AnimationView(name: "airbnb-logo")
//        animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
//        animationView.center = self.view.center
//        animationView.contentMode = .scaleAspectFill
        mainView.addSubview(lottieAnimation.animationView)
        lottieAnimation.animationView.play()
    }
    
}

