//
//  DetailRoomViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/06/04.
//

import UIKit

class DetailRoomViewController: UIViewController {

    static let reuseIdentifier = "DetailRoomViewController"
    static let nib = UINib(nibName: DetailRoomViewController.reuseIdentifier, bundle: nil)
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var hostLabel: UILabel!
    @IBOutlet weak var hostImageView: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavi()
    }
    
}


extension DetailRoomViewController {
    
    private func configureNavi() {
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }

}


extension DetailRoomViewController {
    
    @IBAction func backButtonTouched(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
