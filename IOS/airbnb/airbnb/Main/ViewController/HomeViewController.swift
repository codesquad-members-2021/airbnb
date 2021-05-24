//
//  ViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/17.
//

import UIKit

final class HomeViewController: UIViewController {

    @IBOutlet weak var heroImageView: UIImageView!
    
    private var searchBar: UISearchBar {
        let searchBar = UISearchBar()
        searchBar.delegate = self
        searchBar.searchTextField.clearButtonMode = .never
        searchBar.placeholder = viewModel.searchBarPlaceholder
        return searchBar
    }
    
    private var viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        setSearchBar()
    }
    
    private func bind() {
        viewModel.bind { [weak self] imageUrl in
            self?.updateHeroImage(with: imageUrl)
        } errorHandler: { [weak self] error in
            self?.alertError(error: error)
        }
    }
    
    private func updateHeroImage(with cachePath: String) {
        heroImageView.image = UIImage(contentsOfFile: cachePath) ?? UIImage()
    }
    
    private func alertError(error: Error) {
        let customError = error as? CustomError ?? CustomError.unknown
        let alert = AlertFactory.create(error: customError)
        self.present(alert, animated: true, completion: nil)
    }
    
    private func setSearchBar() {
        tabBarController?.navigationItem.titleView = searchBar
    }
    
}

extension HomeViewController: UISearchBarDelegate {
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
        pushNextViewController()
    }
    
    private func pushNextViewController() {
        let nextStoryBoard = StoryboardFactory.create(.accomodationConditions)
        let nextViewController = ViewControllerFactory.create(from: nextStoryBoard, type: PopularLocationViewController.self)
        self.tabBarController?.navigationItem.backButtonTitle = viewModel.backButtonTitle
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
}
