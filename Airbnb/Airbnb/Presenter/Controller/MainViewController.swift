import UIKit
import RxSwift
import RxDataSources
import NSObject_Rx

class MainViewController: UIViewController {
    
    @IBOutlet weak var travelSearchBar: UISearchBar!
    @IBOutlet weak var mainInfoCollectionView: UICollectionView!
    
    private let mainViewModel = MainViewModel()
    
    private lazy var titleForHeaderInsection: RxCollectionViewSectionedReloadDataSource<SectionOfMainViewData>.ConfigureSupplementaryView = { [weak self] dataSource, collectionView, kind, indexPath in
        guard let strongSelf = self else { return UICollectionReusableView()}
        return strongSelf.headerCell(indexPath: indexPath, kind: kind)
    }
    
    private lazy var dataSource = RxCollectionViewSectionedReloadDataSource<SectionOfMainViewData>(configureCell: { dataSource, collectionView, indexPath, item in
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCell.identifier, for: indexPath) as? MainCell  else { return UICollectionViewCell() }
        switch indexPath.section {
        case 0:
            cell.configureFirstSection(item)
        case 1:
            cell.configureSecondSection(item)
        default:
            cell.configureThirdView(item)
        }
        return cell
    }, configureSupplementaryView: titleForHeaderInsection)
    
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
        mainInfoCollectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "Section")
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.headerReferenceSize = CGSize(width: self.mainInfoCollectionView.frame.width, height: self.mainInfoCollectionView.frame.height*0.2)
        mainInfoCollectionView.collectionViewLayout = flowLayout
    }
    
    private func headerCell(indexPath: IndexPath, kind: String) -> UICollectionReusableView {
        let header = mainInfoCollectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Section", for: indexPath)
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: mainInfoCollectionView.frame.width, height: mainInfoCollectionView.frame.height*0.2))
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.text = dataSource.sectionModels[indexPath.section].header
        header.addSubview(label)
        return header
    }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: view.frame.width, height: view.frame.height*0.5)
        } else if indexPath.section == 1 {
            return CGSize(width: mainInfoCollectionView.frame.width*0.4, height: mainInfoCollectionView.frame.height*0.1)
        }
        else { return CGSize(width: view.frame.width*0.8, height: view.frame.height*0.4)}
    }
    
}
