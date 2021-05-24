

import UIKit

class SearchViewController: UIViewController {

    private var travelCollectionViewDataSource = TravelCollectionViewDataSource()
    @IBOutlet weak var travelCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationItem()
        configureDataSource()
    }
    
    private lazy var cancelButton: UIBarButtonItem = {
        let cancelButton = UIBarButtonItem(title: "지우기", style: .plain, target: self, action: #selector(clearSearchBar))
        return cancelButton
    }()
    
    private var searchController: UISearchController = {
        let searchController = UISearchController(searchResultsController: SearchTableViewController())
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.automaticallyShowsCancelButton = false
        searchController.searchBar.searchTextField.clearButtonMode = .never
        return searchController
    }()

    
    func configureNavigationItem()  {
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.searchController = searchController
        self.navigationItem.searchController?.searchResultsUpdater = self
        self.navigationItem.title = "숙소 찾기"
        self.navigationItem.hidesSearchBarWhenScrolling = false
        self.navigationItem.rightBarButtonItem = cancelButton
    }
    
    func configureDataSource() {
        travelCollectionView.dataSource = travelCollectionViewDataSource
        travelCollectionView.register(TravelCollectionViewCell.nib, forCellWithReuseIdentifier: TravelCollectionViewCell.identifier)
    }
    
    @objc func clearSearchBar()  {
        self.searchController.searchBar.text = ""
    }
}

extension SearchViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        dump(searchController.searchBar.text)
    }
}
