import UIKit

final class MainCollectionViewDelegate: NSObject, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    private var width: CGFloat?
    private var height: CGFloat?
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.section {
        case 0: return CGSize(width: width!, height: height!)
        case 1: return CGSize(width: width!, height: height!*0.7)
        default: return CGSize(width: width!, height: height!)
        }
    }
    
    func setupItemSize(_ width:CGFloat, _ height:CGFloat) {
        self.width = width
        self.height = height
    }
}
