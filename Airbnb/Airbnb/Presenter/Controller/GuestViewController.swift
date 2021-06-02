import UIKit
import RxSwift
import RxCocoa

final class GuestViewController: UIViewController {
    
    @IBOutlet weak var guestLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    private let viewModel = GuestViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainView()
        bind()
    }
    
    func setupInfo(_ location:String, _ date:String, _ price:String) {
        viewModel.setupInfo(location, date, price)
    }
}

private extension GuestViewController {
    
    private func setupMainView() {
        setupBackButton()
    }
    
    private func setupBackButton() {
        backButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.dismiss(animated: true, completion: nil)
            }).disposed(by: rx.disposeBag)
    }
}

private extension GuestViewController {
    
    private func bind() {
        bindLocationLabel()
        bindDateLabel()
        bindPriceLabel()
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
    
    private func bindPriceLabel() {
        viewModel.priceData
            .drive(priceLabel.rx.text)
            .disposed(by: rx.disposeBag)
    }
}
