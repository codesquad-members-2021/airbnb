

import UIKit

class SearchViewController: UIViewController {

    private var travelCollectionViewDataSource = TravelCollectionViewDataSource()
    @IBOutlet weak var travelCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationItem()
        configureDataSource()
    }
    
    private var cancelButton: UIBarButtonItem = {
       let button = UIBarButtonItem()
        button.title = "지우기"
        return button
    }()
    
    private var searchController: UISearchController = {
       let searchController = UISearchController(searchResultsController: SearchResultViewController())
        searchController.searchBar.placeholder = "어디로 여행가세요?"
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.automaticallyShowsCancelButton = false
        searchController.searchBar.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(makeRemoveButton(_:))))
        return searchController
    }()

    
    func configureNavigationItem()  {
        self.navigationController?.isNavigationBarHidden = false
        self.navigationItem.searchController = searchController
        self.navigationItem.title = "숙소 찾기"
        self.navigationItem.hidesSearchBarWhenScrolling = false
        self.navigationItem.rightBarButtonItem = cancelButton
    }
    
    func configureDataSource() {
        travelCollectionView.dataSource = travelCollectionViewDataSource
        travelCollectionView.register(TravelCollectionViewCell.nib, forCellWithReuseIdentifier: TravelCollectionViewCell.identifier)
    }
    
    @objc func makeRemoveButton(_ UITapGestureReconizer: UITapGestureRecognizer) {
        self.navigationItem.rightBarButtonItem = cancelButton
    }
}

