//
//  PriceViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import UIKit

class PriceViewController: UIViewController {

    weak var infoDelegate : SelectInfoDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension PriceViewController : Storyboarded {
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Search", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
