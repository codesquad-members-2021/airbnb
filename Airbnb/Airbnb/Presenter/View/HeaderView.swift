import UIKit

final class HeaderView: UICollectionReusableView {
    
    static let identifier = "HeaderView"
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMainView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupMainView()
    }
    
    func configure(_ text:String) {
        titleLabel.text = text
    }
    
    private func setupMainView() {
        addSubview(titleLabel)
    }
}
