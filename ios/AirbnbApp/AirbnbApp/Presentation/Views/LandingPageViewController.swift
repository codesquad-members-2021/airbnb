//
//  ViewController.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/17.
//

import UIKit

class LandingPageViewController: UIViewController {
    enum Constant {
        static let buttonCornerRadius: CGFloat = 10.0
        static let buttonVerticalInset: CGFloat = 8.0
        static let buttonHorizontalInset: CGFloat = 16.0
        static let searchBarPlaceholder: String = "어디로 여행가세요?"
    }
    
    @IBOutlet weak var getTripIdeasButton: UIButton!
    let searchBar = UISearchBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSearchBar()
        configureGetTripIdeasButton()
    }
    
    private func configureSearchBar() {
        searchBar.placeholder = Constant.searchBarPlaceholder
        searchBar.delegate = self
        navigationItem.titleView = searchBar
    }
    
    private func configureGetTripIdeasButton() {
        getTripIdeasButton.layer.masksToBounds = true
        getTripIdeasButton.layer.cornerRadius = Constant.buttonCornerRadius
        getTripIdeasButton.contentEdgeInsets = UIEdgeInsets(top: Constant.buttonVerticalInset,
                                                            left: Constant.buttonHorizontalInset,
                                                            bottom: Constant.buttonVerticalInset,
                                                            right: Constant.buttonHorizontalInset)
    }
}

extension LandingPageViewController: UISearchBarDelegate {
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        let layout = UICollectionViewFlowLayout()
        let mainSearchCollectionVC = MainSearchCollectionViewController(collectionViewLayout: layout)
        self.navigationController?.pushViewController(mainSearchCollectionVC, animated: true)
        searchBar.endEditing(true)
    }
}
