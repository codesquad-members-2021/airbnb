import UIKit
import RxSwift
import RxCocoa

class SearchViewController: UIViewController {
    
    @IBOutlet var travelSearchBar: UISearchBar!
    @IBOutlet var regieonCollectionView: UICollectionView!
    
    private lazy var searchController: UISearchController = {
        let controller = UISearchController(searchResultsController: nil)
        return controller
    }()
    
    private let viewModel = MainViewModel()
    private let delegate = MainCollectionViewDelegate()
    private var filtredInfo = [MainViewInfo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegate()
        setupCollectionView()
        setupSearchController()
        bind()
        travelSearchBar.addSubview(searchController.searchBar)
    }
    
    func searchBarIsEmtpy() -> Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filterContentForSearchText(_ searchText:String, _ scope: String = "All") {
        filtredInfo = viewModel.regieonViewData().filter({(region: MainViewInfo) -> Bool in
            return region.mainInfo.contains(searchText)
        })
        //reload??
    }
    
    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmtpy()
    }
}


private extension SearchViewController {
    
    private func setupDelegate() {
        regieonCollectionView.rx.setDelegate(delegate)
            .disposed(by: rx.disposeBag)
        delegate.setupItemSize(view.frame.width, view.frame.height*0.1)
    }
}

private extension SearchViewController {
    
    private func setupCollectionView() {
        regieonCollectionView.showsVerticalScrollIndicator = false
    }
    
    private func setupSearchController() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        definesPresentationContext = true
    }
}

private extension SearchViewController {
    
    private func bind() {
        viewModel.secondViewList()
            .bind(to: regieonCollectionView.rx.items(cellIdentifier: RegieonInfoCell.identifier, cellType: RegieonInfoCell.self)) { row, data, cell in
                cell.configure(data, ControllerPage.search)
            }.disposed(by: rx.disposeBag)
    }
}

extension SearchViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
    
}
