import UIKit
import RxSwift
import RxDataSources
import NSObject_Rx

class MainViewController: UIViewController {
    
    @IBOutlet weak var travelSearchBar: UISearchBar!
    @IBOutlet weak var mainInfoCollectionView: UICollectionView!
    
    private let mainViewModel = MainViewModel()
    private lazy var dataSource = dataSources()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegate()
        setupCollectionView()
        bindMainViewModel()
    }
    
    private func setupDelegate() {
        mainInfoCollectionView.rx.setDelegate(self).disposed(by: rx.disposeBag)
    }
    
    private func bindMainViewModel() {
        mainViewModel.mainViewList()
            .bind(to: mainInfoCollectionView.rx.items(dataSource: dataSource))
            .disposed(by: rx.disposeBag)
    }
}

private extension MainViewController {
    
    private func setupCollectionView() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.headerReferenceSize = CGSize(width: self.mainInfoCollectionView.frame.width, height: self.mainInfoCollectionView.frame.height*0.2)
        mainInfoCollectionView.collectionViewLayout = flowLayout
        mainInfoCollectionView.register(FirstSectionCell.self, forCellWithReuseIdentifier: FirstSectionCell.identifier)
        mainInfoCollectionView.register(SecondSectionCell.self, forCellWithReuseIdentifier: SecondSectionCell.identifier)
        mainInfoCollectionView.register(ThirdSectionCell.self, forCellWithReuseIdentifier: ThirdSectionCell.identifier)
        mainInfoCollectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderView.identifier)
    }
    
    private func dataSources() -> RxCollectionViewSectionedReloadDataSource<SectionOfMainViewData> {
        return RxCollectionViewSectionedReloadDataSource<SectionOfMainViewData>(configureCell: {dataSource, collectionView, indexPath, item in
            switch indexPath.section {
            case 0:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstSectionCell.identifier, for: indexPath) as? FirstSectionCell  else { return UICollectionViewCell() }
                cell.configure(item)
                return cell
            case 1:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SecondSectionCell.identifier, for: indexPath) as? SecondSectionCell  else { return UICollectionViewCell() }
                cell.configure(item)
                return cell
            case 2:
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThirdSectionCell.identifier, for: indexPath) as? ThirdSectionCell  else { return UICollectionViewCell() }
                cell.configure(item)
                return cell
            default: break
            }
            return UICollectionViewCell()
        }, configureSupplementaryView: { dataSource, collectionView, kind, indexPath in
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderView.identifier, for: indexPath) as? HeaderView else { return UICollectionReusableView() }
            header.configure(dataSource.sectionModels[indexPath.section].header)
            return header
        })
    }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: view.frame.width, height: view.frame.height*0.5)
        } else if indexPath.section == 1 {
            return CGSize(width: view.frame.width*0.35, height: view.frame.height*0.1)
        }
        else { return CGSize(width: view.frame.width*0.8, height: view.frame.height*0.4)}
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if section == 1 {return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)}
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
