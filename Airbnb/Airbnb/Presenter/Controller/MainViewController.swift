import UIKit
import RxSwift
import RxDataSources
import NSObject_Rx

class MainViewController: UIViewController {
    
    @IBOutlet weak var travelSearchBar: UISearchBar!
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    private let mainViewModel = MainViewModel()
    private let delegate = MainCollectionViewDelegate()
    private lazy var datasource = setupDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegate()
        setupCollectionView()
        mainViewModel.firstViewList()
            .bind(to: mainCollectionView.rx.items(dataSource: datasource))
            .disposed(by: rx.disposeBag)
    }
}

//MARK: -Setup Delegate
private extension MainViewController {
    
    private func setupDelegate() {
        mainCollectionView.rx.setDelegate(delegate)
            .disposed(by: rx.disposeBag)
        delegate.setupItemSize(view.frame.width, view.frame.height*0.4)
    }
    
    private func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.headerReferenceSize = CGSize(width: view.frame.width, height: view.frame.height*0.1)
        mainCollectionView.collectionViewLayout = layout
        mainCollectionView.register(FirstSectionCell.self, forCellWithReuseIdentifier: FirstSectionCell.identifier)
        mainCollectionView.register(SecondSectionCell.self, forCellWithReuseIdentifier: SecondSectionCell.identifier)
        mainCollectionView.register(ThirdSectionCell.self, forCellWithReuseIdentifier: ThirdSectionCell.identifier)
        mainCollectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderView.identifier)
    }
}

//MARK: -Setup DataSource
private extension MainViewController {
    
    private func setupDataSource() -> RxCollectionViewSectionedReloadDataSource<SectionOfMainViewData> {
        return RxCollectionViewSectionedReloadDataSource<SectionOfMainViewData>(configureCell: { dataSource, collectionView, indexPath, item in
            switch indexPath.section {
            case 0:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstSectionCell.identifier, for: indexPath) as? FirstSectionCell  else { return UICollectionViewCell() }
                cell.configure(item)
                return cell
            case 1:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SecondSectionCell.identifier, for: indexPath) as? SecondSectionCell else { return UICollectionViewCell() }
                return cell
            case 2:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThirdSectionCell.identifier, for: indexPath) as? ThirdSectionCell else { return UICollectionViewCell() }
                return cell
            default:
                break
            }
            return UICollectionViewCell()
        }, configureSupplementaryView: { dataSource, collectionView, kind, indexPath in
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderView.identifier, for: indexPath) as? HeaderView else { return UICollectionReusableView() }
            header.configure(dataSource.sectionModels[indexPath.section].header)
            return header
        })
    }
}
