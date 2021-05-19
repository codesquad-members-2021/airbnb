import UIKit

class MainCell: UICollectionViewCell {
    
    static let identifier = "MainCell"
    
    private var mainView: FirstSectionView?
    
    func configureFirstSection(_ item:MainViewInfo) {
        mainView = FirstSectionView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height*0.8))
        mainView?.configureMainView(item)
        addSubview(mainView!)
    }
}
