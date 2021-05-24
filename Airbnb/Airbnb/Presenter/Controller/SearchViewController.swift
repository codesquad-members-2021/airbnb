import UIKit
import RxSwift
import RxCocoa

class SearchViewController: UIViewController {
    
    @IBOutlet var travelSearchBar: UISearchBar!
    @IBOutlet var regieonCollectionView: UICollectionView!
    
    private let viewModel = MainViewModel()
    private let delegate = MainCollectionViewDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegate()
        bind()
    }
    
}


private extension SearchViewController {
    
    private func setupDelegate() {
        regieonCollectionView.rx.setDelegate(delegate)
            .disposed(by: rx.disposeBag)
        delegate.setupItemSize(view.frame.width*0.5, view.frame.height*0.1)
    }
    
    private func bind() {
        viewModel.secondViewList()
            .bind(to: regieonCollectionView.rx.items(cellIdentifier: RegieonInfoCell.identifier, cellType: RegieonInfoCell.self)) { row, data, cell in
                cell.configure(data)
            }.disposed(by: rx.disposeBag)
    }
}
