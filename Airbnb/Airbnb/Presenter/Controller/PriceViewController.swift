import UIKit
import RxSwift
import RxCocoa

class PriceViewController: UIViewController {
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    private let viewModel = PriceViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    func setupInfo(of location:String, of date:String) {
        viewModel.setupInfo(of: location, of: date)
    }
}

private extension PriceViewController {
    
    private func bind() {
        bindLocationLabel()
        bindDateLabel()
    }
    
    private func bindLocationLabel() {
        viewModel.locationData
            .drive(locationLabel.rx.text)
            .disposed(by: rx.disposeBag)
    }
    
    private func bindDateLabel() {
        viewModel.dateData
            .drive(dateLabel.rx.text)
            .disposed(by: rx.disposeBag)
    }
}
