import UIKit
import RxSwift
import RxCocoa

final class SearchViewController: UIViewController {
    
    @IBOutlet var backButton: UIButton!
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
        setupMainView()
        bind()
    }
}


private extension SearchViewController {
    
    private func setupDelegate() {
        regieonCollectionView.rx.setDelegate(delegate)
            .disposed(by: rx.disposeBag)
        delegate.setupItemSize(view.frame.width, view.frame.height*0.1)
        
        regieonCollectionView.rx.modelSelected(MainViewInfo.self)
            .subscribe(onNext: { [weak self] info in
                let nextVC = self?.storyboard?.instantiateViewController(withIdentifier: "CanlendarVC") as! CalendarViewController
                nextVC.setupLocation(info.mainInfo)
                nextVC.modalTransitionStyle = .crossDissolve
                nextVC.modalPresentationStyle = .fullScreen
                self?.present(nextVC, animated: true, completion: nil)
            }).disposed(by: rx.disposeBag)
    }
}

private extension SearchViewController {
    
    private func setupMainView() {
        regieonCollectionView.showsVerticalScrollIndicator = false
        travelSearchBar.addSubview(searchController.searchBar)
        setupTabBar()
    }
    
    private func setupTabBar() {
        searchController.searchBar.rx.searchButtonClicked
            .subscribe(onNext: { [weak self] _ in
                let nextVC = self?.storyboard?.instantiateViewController(withIdentifier: "CanlendarVC") as! CalendarViewController
                nextVC.setupLocation(self?.searchController.searchBar.text ?? "")
                nextVC.modalTransitionStyle = .crossDissolve
                nextVC.modalPresentationStyle = .fullScreen
                self?.dismiss(animated: true, completion: nil)
                self?.present(nextVC, animated: true, completion: nil)
            }).disposed(by: rx.disposeBag)
    }
}

private extension SearchViewController {
    
    private func bind() {
        bindViewModel()
        bindSearchController()
        bindButton()
    }
    
    private func bindViewModel() {
        viewModel.getFilteredData()
            .drive(regieonCollectionView.rx.items(cellIdentifier: RegieonInfoCell.identifier, cellType: RegieonInfoCell.self)) { _, data, cell in
                cell.configure(data, ControllerPage.search)
            }.disposed(by: rx.disposeBag)
    }
    
    private func bindSearchController() {
        searchController.searchBar.rx.text
            .orEmpty
            .bind(to: viewModel.searchText)
            .disposed(by: rx.disposeBag)
    }
    
    private func bindButton() {
        backButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.dismiss(animated: true, completion: nil)
            }).disposed(by: rx.disposeBag)
    }
}
