import UIKit

final class ThirdSectionView: UIView {
    
    private lazy var mainImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        return imageView
    }()
    
    private lazy var mainTitleLabel: UILabel = {
        let mainLabel = UILabel(frame: .zero)
        return mainLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMainView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupMainView()
    }
    
    func configure(_ item:MainViewInfo) {
        mainImageView.image = UIImage(named: item.image)
        mainTitleLabel.text = item.mainInfo
    }
}

private extension ThirdSectionView {
    
    private func setupMainView() {
        setupMainImageView()
        setupMainTitleLabel()
    }
    
    private func setupMainImageView() {
        addSubview(mainImageView)
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        mainImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        mainImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.7).isActive = true
        mainImageView.layer.cornerRadius = 10
    }
    
    private func setupMainTitleLabel() {
        addSubview(mainTitleLabel)
        mainTitleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        mainTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        mainTitleLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 5).isActive = true
        mainTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        mainTitleLabel.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mainTitleLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
    }
}
