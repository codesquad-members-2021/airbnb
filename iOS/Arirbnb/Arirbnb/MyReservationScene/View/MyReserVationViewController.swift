//
//  MyReserVationViewController.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/18.
//

import UIKit

class MyReserVationViewController: UIViewController {

    static let storyboardName = "Main"
    static let storyboardID = "MyReserVationViewController"
    
    static func create(with viewModel: MyReserVationViewModel = MyReserVationViewModel()) -> MyReserVationViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(identifier: storyboardID) as? MyReserVationViewController else {
            return MyReserVationViewController()
        }
        vc.viewModel = viewModel
        return vc
    }
    
    var viewModel: MyReserVationViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
