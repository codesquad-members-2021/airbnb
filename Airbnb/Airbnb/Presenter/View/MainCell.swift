import UIKit

class MainCell: UICollectionViewCell {
    
    static let identifier = "MainCell"
    
    private var firstView: FirstSectionView?
    private var secondView: SecondSectionView?
    private var thirdView: ThirdSectionView?
    
    func configureFirstSection(_ item:MainViewInfo) {
        firstView = FirstSectionView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height*0.8))
        firstView?.configure(item)
        addSubview(firstView!)
    }
    
    func configureSecondSection(_ item:MainViewInfo) {
        secondView = SecondSectionView(frame: CGRect(x: 0, y: 0, width: frame.width*0.8, height: frame.height))
        secondView?.configrue(item)
        addSubview(secondView!)
    }
    
    func configureThirdView(_ item:MainViewInfo) {
        thirdView = ThirdSectionView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        thirdView?.configure(item)
        addSubview(thirdView!)
    }
}
