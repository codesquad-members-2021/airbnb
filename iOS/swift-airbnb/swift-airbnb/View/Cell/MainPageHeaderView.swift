//
//  MainPageHeaderView.swift
//  swift-airbnb
//
//  Created by user on 2021/05/20.
//

import UIKit

class MainPageHeaderView: UICollectionReusableView {
    @IBOutlet weak var mainLabel: UILabel!
    
    static let reuseIdentifier = "MainPageHeaderView"
    static var nib: UINib {
        return UINib(nibName: reuseIdentifier, bundle: nil)
    }
}
