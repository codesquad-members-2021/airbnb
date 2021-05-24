import UIKit

class RegieonInfoCell: UICollectionViewCell {
    
    static let identifier = "RegieonInfoCell"
    
    private lazy var secondSectionView: SecondSectionView = {
        let secondView = SecondSectionView(frame: .zero)
        return secondView
    }()
        
    override func layoutSubviews() {
        super.layoutSubviews()
        setupMainCell()
    }
    
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

private extension RegieonInfoCell {
    private func setupMainCell() {
        secondSectionView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        addSubview(secondSectionView)
    }
}
