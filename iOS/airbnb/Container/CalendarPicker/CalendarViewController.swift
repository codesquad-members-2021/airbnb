//
//  CalendarViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/25.
//

import UIKit

enum CalendarDataError: Error {
    case metadataGeneration
}

class CalendarViewController: UIViewController {
    
    @IBOutlet weak var collection: UICollectionView!
    
    // MARK: - Properties
    
    private let flowLayout : UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionHeadersPinToVisibleBounds = true
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        return layout
    }()
    
    weak var infoDelegate : SelectInfoDelegate?
    private var dataSource : CalenderCollectionDataSource?
    private var numberOfWeeksInBaseDate: Int = 0
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollection()
    }

}

// MARK: - Configuration

extension CalendarViewController {
    
    private func configureCollection(){
        let baseDate = Date()
        let calendar = Calendar(identifier: .gregorian)
        
        numberOfWeeksInBaseDate = calendar.range(of: .weekOfMonth, in: .month, for: baseDate)?.count ?? 0
        dataSource = CalenderCollectionDataSource(with: baseDate)
        
        collection.dataSource = dataSource
        collection.delegate = self
        collection.collectionViewLayout = flowLayout
        collection.allowsMultipleSelection = true
        collection.isUserInteractionEnabled = true
    }
    
}

extension CalendarViewController : UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = collection.cellForItem(at: indexPath) else {
            return
        }
        
        let viewModel = self.dataSource?.models[indexPath.row]
        viewModel?.toggle(cell)
        infoDelegate?.didSelectDay(viewModel?.day)
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        guard let cell = collection.cellForItem(at: indexPath) else {
            return
        }
        let viewModel = self.dataSource?.models[indexPath.row]
        viewModel?.toggle(cell)
    }
    
}
extension CalendarViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = Int(collectionView.frame.width / 7)
        let height = Int(collectionView.frame.height) / numberOfWeeksInBaseDate - 10
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50.0)
    }
}
