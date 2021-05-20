import UIKit

class SecondSectionCell: UICollectionViewCell {
    
    static let identifier = "SecondCell"
    
    private lazy var secondSectionView: SecondSectionView = {
        let secondView = SecondSectionView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height*0.8))
        return secondView
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMainCell()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupMainCell()
    }
    
    func configure(_ item:MainViewInfo) {
        secondSectionView.configrue(item)
    }
}

extension SecondSectionCell {
    private func setupMainCell() {
        addSubview(secondSectionView)
    }
}
