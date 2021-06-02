import UIKit

final class FirstSectionView: UIView {
    
    private lazy var  mainImageView: UIImageView = {
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
    
    private lazy var ideaButton: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupMainView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupMainView()
    }
    
    func configure(_ item: MainViewInfo) {
        mainImageView.image = UIImage(named: item.image)
        mainTitleLabel.text = item.mainInfo
        detailInfoLabel.text = item.detailInfo
    }
}

//MARK: -SetupViews
private extension FirstSectionView {
    
    private func setupMainView() {
        setupMainImageView()
        setupMainTitleLabel()
        setupDetailInfoLabel()
        setupIdeaButton()
    }
    
    private func setupMainImageView() {
        addSubview(mainImageView)
        mainImageView.isUserInteractionEnabled = true
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        mainImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        mainImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    private func setupMainTitleLabel() {
        mainImageView.addSubview(mainTitleLabel)
        mainTitleLabel.numberOfLines = 0
        mainTitleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        mainTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        mainTitleLabel.topAnchor.constraint(equalTo: mainImageView.topAnchor, constant: 20).isActive = true
        mainTitleLabel.leadingAnchor.constraint(equalTo: mainImageView.leadingAnchor, constant: 16).isActive = true
        mainTitleLabel.widthAnchor.constraint(equalTo: mainImageView.widthAnchor, multiplier: 0.6).isActive = true
        mainTitleLabel.heightAnchor.constraint(equalTo: mainImageView.heightAnchor, multiplier: 0.2).isActive = true
    }
    
    private func setupDetailInfoLabel() {
        mainImageView.addSubview(detailInfoLabel)
        detailInfoLabel.numberOfLines = 0
        detailInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        detailInfoLabel.topAnchor.constraint(equalTo: mainTitleLabel.bottomAnchor, constant: 16).isActive = true
        detailInfoLabel.leadingAnchor.constraint(equalTo: mainTitleLabel.leadingAnchor).isActive = true
        detailInfoLabel.widthAnchor.constraint(equalTo: mainTitleLabel.widthAnchor).isActive = true
        detailInfoLabel.heightAnchor.constraint(equalTo: mainImageView.heightAnchor, multiplier: 0.2).isActive = true
    }
    
    private func setupIdeaButton() {
        mainImageView.addSubview(ideaButton)
        ideaButton.isUserInteractionEnabled = true
        ideaButton.setTitle("여행 아이디어 얻기", for: .normal)
        ideaButton.setTitleColor(UIColor.white, for: .normal)
        ideaButton.backgroundColor = UIColor.darkGray
        ideaButton.translatesAutoresizingMaskIntoConstraints = false
        ideaButton.topAnchor.constraint(equalTo: detailInfoLabel.bottomAnchor, constant: 16).isActive = true
        ideaButton.leadingAnchor.constraint(equalTo: mainTitleLabel.leadingAnchor).isActive = true
        ideaButton.widthAnchor.constraint(equalTo: mainTitleLabel.widthAnchor, multiplier: 0.5).isActive = true
        ideaButton.heightAnchor.constraint(equalTo: mainImageView.heightAnchor, multiplier: 0.1).isActive = true
        ideaButton.layer.cornerRadius = 5
    }
}
