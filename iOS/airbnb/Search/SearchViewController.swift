//
//  SearchViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

class SearchViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
    }
}
extension SearchViewController : Storyboarded {
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Search", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
