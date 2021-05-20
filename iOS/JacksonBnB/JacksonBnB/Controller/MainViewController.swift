//
//  ViewController.swift
//  JacksonBnB
//
//  Created by jinseo park on 5/18/21.
//

import UIKit
import Lottie
//import Hero

class MainViewController: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var searchBtnTouched: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let lottieAnimation = LottieAnimation(with: self.view)
        mainImageView.addSubview(lottieAnimation.animationView)
        lottieAnimation.animationView.play()
    }
    @IBAction func searchHotels(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier: "SearchHotelsViewController")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}

