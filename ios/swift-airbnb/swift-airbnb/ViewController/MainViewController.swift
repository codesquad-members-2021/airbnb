
import UIKit

class MainViewController: UIViewController {
    
    private let travelCollectionViewDataSource = TravelCollectionViewDataSource()
    private let recommendTravelCollectionViewDataSource = RecommendTravelCollectionViewDataSource()
    
    @IBOutlet weak var travelCollectionView: UICollectionView!
    @IBOutlet weak var recommendTravelCollectionView: UICollectionView!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDataSource()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func configureDataSource() {
        travelCollectionView.dataSource = travelCollectionViewDataSource
        travelCollectionView.register(TravelCollectionViewCell.nib, forCellWithReuseIdentifier: TravelCollectionViewCell.identifier)
        recommendTravelCollectionView.dataSource = recommendTravelCollectionViewDataSource
        recommendTravelCollectionView.register(RecommendTravelCollectionViewCell.nib, forCellWithReuseIdentifier: RecommendTravelCollectionViewCell.identifier)
    }
}

