import UIKit

class MainView: UIView {
    
    private lazy var  mainImageVIew: UIImageView = {
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
    
    func configureMainView(_ title:String, _ detail:String) {
        mainTitleLabel.text = title
        detailInfoLabel.text = detail
    }
}

//MARK: -SetupViews
private extension MainView {
    
    private func setupMainView() {
        setupMainImageView()
        setupMainTitleLabel()
        setupDetailInfoLabel()
        setupIdeaButton()
    }
    
    private func setupMainImageView() {
        addSubview(mainImageVIew)
        mainImageVIew.translatesAutoresizingMaskIntoConstraints = false
        mainImageVIew.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        mainImageVIew.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        mainImageVIew.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        mainImageVIew.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    private func setupMainTitleLabel() {
        mainImageVIew.addSubview(mainTitleLabel)
        mainTitleLabel.numberOfLines = 0
        mainTitleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        mainTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        mainTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        mainTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        mainTitleLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6).isActive = true
        mainTitleLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true
    }
    
    private func setupDetailInfoLabel() {
        mainImageVIew.addSubview(detailInfoLabel)
        detailInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        detailInfoLabel.topAnchor.constraint(equalTo: mainTitleLabel.topAnchor, constant: 16).isActive = true
        detailInfoLabel.leadingAnchor.constraint(equalTo: mainTitleLabel.leadingAnchor).isActive = true
        detailInfoLabel.widthAnchor.constraint(equalTo: mainTitleLabel.widthAnchor).isActive = true
        detailInfoLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
    }
    
    private func setupIdeaButton() {
        mainImageVIew.addSubview(ideaButton)
        ideaButton.setTitle("여행 아이디어 얻기", for: .normal)
        ideaButton.setTitleColor(UIColor.white, for: .normal)
        ideaButton.backgroundColor = UIColor.systemGray
        ideaButton.translatesAutoresizingMaskIntoConstraints = false
        ideaButton.topAnchor.constraint(equalTo: detailInfoLabel.topAnchor, constant: 16).isActive = true
        ideaButton.leadingAnchor.constraint(equalTo: mainTitleLabel.leadingAnchor).isActive = true
        ideaButton.widthAnchor.constraint(equalTo: mainTitleLabel.widthAnchor).isActive = true
        ideaButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
        ideaButton.layer.cornerRadius = 5
    }
}
