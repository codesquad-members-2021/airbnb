import UIKit

final class LogInView: UIView {
    
    private lazy var greetingLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "환영합니다!"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.backgroundColor = UIColor.clear
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
        greetingLabel.text = text
    }
    
    private func setupMainView() {
        addSubview(greetingLabel)
        setupGreetingLabel()
    }
    
    private func setupGreetingLabel() {
        greetingLabel.translatesAutoresizingMaskIntoConstraints = false
        greetingLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        greetingLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        greetingLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3).isActive = true
        greetingLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
    }
}
