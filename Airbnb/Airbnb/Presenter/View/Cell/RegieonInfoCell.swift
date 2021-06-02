import UIKit

final class RegieonInfoCell: UICollectionViewCell {
    
    static let identifier = "RegieonInfoCell"
    private var controllerInfo:Int?
    
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
    
    func configure(_ item:MainViewInfo, _ info:Int) {
        secondSectionView.configrue(item)
        controllerInfo = info
    }
}

private extension RegieonInfoCell {
    private func setupMainCell() {
        if controllerInfo == ControllerPage.main {
        secondSectionView.frame = CGRect(x: 0, y: 0, width: frame.width*0.9, height: frame.height)
        } else {
            secondSectionView.frame = CGRect(x: 10, y: 0, width: frame.width*0.5, height: frame.height)
        }
        addSubview(secondSectionView)
    }
}
