
import UIKit

class InformationView: UIView {
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var feeLabel: UILabel!
    @IBOutlet weak var personnelLabel: UILabel!
    
    private let dateFormatter = DateFormatter()

    override init(frame: CGRect) {
        super.init(frame: frame)
        let nib = UINib(nibName: "InformationView", bundle: Bundle.main)
        guard let xibView = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return }
        xibView.frame = self.bounds
        xibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(xibView)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        let nib = UINib(nibName: "InformationView", bundle: Bundle.main)
        guard let xibView = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return }
        xibView.frame = self.bounds
        xibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(xibView)
    }

    func InputCheckLabel(dayArr: [Date]) {
        dateFormatter.dateFormat = "MM월 dd일"
        let convertArr = dayArr.sorted()
        let firstDay = dateFormatter.string(from: convertArr[0])
        let lastDay = dateFormatter.string(from: convertArr.last ?? Date())
        
        self.checkLabel.text = "\(firstDay)-\(lastDay)"
        self.checkLabel.textColor = UIColor.systemGray2
    }
}
