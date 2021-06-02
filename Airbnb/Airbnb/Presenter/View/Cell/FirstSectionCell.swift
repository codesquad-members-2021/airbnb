import UIKit

final class FirstSectionCell: UICollectionViewCell {
    
    static let identifier = "FirstCell"
    
    private lazy var firstSectionView: FirstSectionView = {
        let firstView = FirstSectionView(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        return firstView
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
        firstSectionView.configure(item)
    }
}

private extension FirstSectionCell {
    private func setupMainCell() {
        addSubview(firstSectionView)
    }
}
