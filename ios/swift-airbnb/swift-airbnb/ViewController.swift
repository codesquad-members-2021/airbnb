//
//  ViewController.swift
//  swift-airbnb
//
//  Created by sonjuhyeong on 2021/05/17.
//

import UIKit

class ViewController: UIViewController {
    var network = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        network.reequest(url: Url.base.rawValue, completionHandler: { (result : Result<TestDTO, Error>) in
            switch result {
            case .failure(let error):
                print(error.localizedDescription)
            case .success(let data):
                print(data)
            }
        })
        
    }


}

