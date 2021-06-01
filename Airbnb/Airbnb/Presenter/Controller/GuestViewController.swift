import UIKit
import RxSwift
import RxCocoa

class GuestViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    private let viewModel = GuestViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainView()
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
