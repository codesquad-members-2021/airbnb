//
//  ViewController.swift
//  airbnb
//
//  Created by Song on 2021/05/17.
//

import UIKit

final class HomeViewController: UIViewController {

    private let backButtonTitle = "홈"

    @IBOutlet weak var heroImageView: UIImageView!
    private var searchBar: LocationSearchBar!
    private var viewModel: HomeConfigurable!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = HomeViewModel()
        appDidTurnOn()
        setSearchBar()
    }
    
    private func appDidTurnOn() {
        viewModel.heroImage { [weak self] result in
            do {
                let cacheUrl = try result.get()
                self?.updateHeroImage(with: cacheUrl)
            } catch {
                self?.alertError(error: error)
            }
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
        searchBar = LocationSearchBar()
        searchBar.delegate = self
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
        self.tabBarController?.navigationItem.backButtonTitle = backButtonTitle
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
}
