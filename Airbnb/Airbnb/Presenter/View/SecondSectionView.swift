import UIKit

class SecondSectionView: UIView {
    
    private lazy var mainImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        return imageView
    }()
    
    private lazy var mainTitleLabel: UILabel = {
        let mainLabel = UILabel(frame: .zero)
        return mainLabel
    }()
    
    private lazy var detailInfoLabel: UILabel = {
        let detailLabel = UILabel(frame: .zero)
        return detailLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMainView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupMainView()
    }
    
    func configrue(_ item:MainViewInfo) {
        mainImageView.image = UIImage(named: item.image)
        mainTitleLabel.text = item.mainInfo
        detailInfoLabel.text = "차로 \(item.detailInfo!) 거리"
    }
    func reuse() {
        mainImageView.image = nil
        mainTitleLabel.text = nil
        detailInfoLabel.text = nil
    }
}

//MARK: -SetupViews
private extension SecondSectionView {
    
    private func setupMainView() {
        setupMainImageView()
        setupMainTitleLabel()
        setupDetailInfoLabel()
    }
    
    private func setupMainImageView() {
        addSubview(mainImageView)
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        mainImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        mainImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
        mainImageView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        mainImageView.layer.cornerRadius = 10
    }
    
    private func setupMainTitleLabel() {
        addSubview(mainTitleLabel)
        mainTitleLabel.font = UIFont.boldSystemFont(ofSize: 15)
        mainTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        mainTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 2).isActive = true
        mainTitleLabel.leadingAnchor.constraint(equalTo: mainImageView.trailingAnchor, constant: 10).isActive = true
        mainTitleLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8).isActive = true
        mainTitleLabel.heightAnchor.constraint(equalTo: mainImageView.heightAnchor, multiplier: 0.5).isActive = true
    }
    
    private func setupDetailInfoLabel() {
        addSubview(detailInfoLabel)
        detailInfoLabel.font = UIFont.systemFont(ofSize: 15)
        detailInfoLabel.textColor = UIColor.systemGray2
        detailInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        detailInfoLabel.topAnchor.constraint(equalTo: mainTitleLabel.bottomAnchor, constant: 0).isActive = true
        detailInfoLabel.leadingAnchor.constraint(equalTo: mainTitleLabel.leadingAnchor).isActive = true
        detailInfoLabel.widthAnchor.constraint(equalTo: mainTitleLabel.widthAnchor).isActive = true
        detailInfoLabel.heightAnchor.constraint(equalTo: mainImageView.heightAnchor, multiplier: 0.5).isActive = true
    }
}
