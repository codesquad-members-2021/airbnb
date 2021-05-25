//
//  MainPageViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/05/18.
//

import UIKit
import Combine

class MainPageViewController: UIViewController {
    
    @IBOutlet weak var hiroImageView: UIImageView!
    private var searchController: UISearchController!
    
    let viewModel = MainPageUseCase()
    private var cancelBag = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchBar()
        viewModel.requestMainPage()
        bind()
    }
    
    private func configureSearchBar() {
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        searchController.searchBar.delegate = self
        self.navigationItem.searchController = searchController
    }
    
    private func convert(imageUrlString: String) -> UIImage {
        guard let url = URL(string: imageUrlString) else { return UIImage() }
        let data = try? Data(contentsOf: url)
        return UIImage(data: data!) ?? UIImage()
    }
    
    private func bind() {
        viewModel.$mainPage.receive(on: DispatchQueue.main)
            .sink { mainPage in
                guard let mainPage = mainPage else { return }
                self.hiroImageView.image = self.convert(imageUrlString: mainPage.heroImage)
            }
            .store(in: &cancelBag)
        
        viewModel.$error
            .receive(on: DispatchQueue.main)
            .sink { error in
                guard let error = error else { return }
                print(error) ///사용자에게 에러 표시하는 부분 미구현
            }.store(in: &cancelBag)
    }
}


extension MainPageViewController: UISearchBarDelegate {

    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        let nextVC = SearchCityViewController()
        searchBar.resignFirstResponder()
        self.navigationController?.pushViewController(nextVC, animated: false)
        
    }

}
