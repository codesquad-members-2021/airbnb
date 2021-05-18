//
//  DetailSearchViewController.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/18.
//

import UIKit

class DetailSearchViewController: UIViewController {

    static let storyboardName = "Main"
    static let storybardID = "DetailSearchViewController"
    static func create(_ viewModel: DetailSearchViewModel) -> DetailSearchViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let vc = storyboard.instantiateViewController(identifier: storybardID) as? DetailSearchViewController else {
            return DetailSearchViewController()
        }
        vc.viewModel = viewModel
        return vc
    }

    var viewModel: DetailSearchViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
