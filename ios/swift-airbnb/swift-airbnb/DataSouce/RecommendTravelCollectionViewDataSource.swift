

import UIKit

class RecommendTravelCollectionViewDataSource: NSObject, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecommendTravelCollectionViewCell.identifier, for: indexPath) as? RecommendTravelCollectionViewCell else {
            return RecommendTravelCollectionViewCell()
        }
        
        return cell
    }
}
