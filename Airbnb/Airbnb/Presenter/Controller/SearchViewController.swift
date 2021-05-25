import UIKit
import RxSwift
import RxCocoa

class SearchViewController: UIViewController {
    
    @IBOutlet var travelSearchBar: UISearchBar!
    @IBOutlet var regieonCollectionView: UICollectionView!
    
    private lazy var searchController: UISearchController = {
        let controller = UISearchController(searchResultsController: nil)
        controller.obscuresBackgroundDuringPresentation = false
        definesPresentationContext = true
        return controller
    }()
    
    private let viewModel = RegieonViewModel()
    private let delegate = MainCollectionViewDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegate()
        setupCollectionView()
        bind()
        travelSearchBar.addSubview(searchController.searchBar)
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
}

private extension SearchViewController {
    
    private func bind() {
        viewModel.getFilteredData()
            .drive(regieonCollectionView.rx.items(cellIdentifier: RegieonInfoCell.identifier, cellType: RegieonInfoCell.self)) { _, data, cell in
                cell.configure(data, ControllerPage.search)
            }.disposed(by: rx.disposeBag)
        
        searchController.searchBar.rx.text
            .orEmpty
            .bind(to: viewModel.searchText)
            .disposed(by: rx.disposeBag)
    }
}
