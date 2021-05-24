import UIKit
import RxSwift
import RxCocoa

class SearchViewController: UIViewController {

    @IBOutlet var travelSearchBar: UISearchBar!
    @IBOutlet var regieonCollectionView: UICollectionView!
    
    private let viewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    private func bind() {
        viewModel.secondViewList()
            .bind(to: regieonCollectionView.rx.items(cellIdentifier: RegieonInfoCell.identifier, cellType: RegieonInfoCell.self)) { row, data, cell in
                cell.configure(data)
            }.disposed(by: rx.disposeBag)
    }
}
