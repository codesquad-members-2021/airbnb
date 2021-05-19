import UIKit
import RxSwift
import RxDataSources
import NSObject_Rx

class MainViewController: UIViewController {
    
    @IBOutlet weak var travelSearchBar: UISearchBar!
    @IBOutlet weak var mainInfoCollectionView: UICollectionView!
    
    private let mainViewModel = MainViewModel()
    private let dataSource = RxCollectionViewSectionedReloadDataSource<SectionOfMainViewData>(configureCell: { dataSource, collectionView, indexPath, item in
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCell.identifier, for: indexPath) as? MainCell  else { return UICollectionViewCell() }
        if indexPath.section == 0 {
            cell.configureFirstSection(item)
        }
        return cell
    })
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegate()
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

extension MainViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 { return CGSize(width: view.frame.width, height: view.frame.height*0.5)}
        else if indexPath.section == 1 { return CGSize(width: 40, height: 40)}
        else { return CGSize(width: 100, height: 100)}
    }
}
