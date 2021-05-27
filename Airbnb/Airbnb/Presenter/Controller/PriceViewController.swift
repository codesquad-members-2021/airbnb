import UIKit
import RxSwift
import RxCocoa
import RangeSeekSlider

class PriceViewController: UIViewController {
    
    @IBOutlet weak var priceRangeControl: RangeSeekSlider!
    @IBOutlet weak var averagePriceLabel: UILabel!
    @IBOutlet weak var serverPriceLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var bakButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var skipDeleteButton: UIButton!
    
    private let viewModel = PriceViewModel()
    private let nextPage = BehaviorRelay(value: false)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        setupMainView()
    }
    
    func setupInfo(of location:String, of date:String) {
        viewModel.setupInfo(of: location, of: date)
    }
}

private extension PriceViewController {
    
    private func setupMainView() {
        setupPriceRangeControl()
        setupButtonObserver()
        setupSkipDeleteButton()
        setupNextButton()
    }
    
    private func setupPriceRangeControl() {
        let min = viewModel.getPriceInfo().min() ?? 0
        let max = viewModel.getPriceInfo().max() ?? 0
        priceRangeControl.minValue = CGFloat(min)
        priceRangeControl.maxValue = CGFloat(max)
        priceRangeControl.selectedMaxValue = CGFloat(max)
        priceRangeControl.delegate = self
    }
    
    private func setupButtonObserver() {
        nextPage.asObservable()
            .subscribe(onNext: { [weak self] next in
                switch next {
                case false:
                    self!.nextButton.isEnabled = false
                    self!.nextButton.setTitleColor(UIColor.systemGray2, for: .normal)
                    self!.skipDeleteButton.setTitle("건너뛰기", for: .normal)
                case true:
                    self!.nextButton.isEnabled = true
                    self!.nextButton.setTitleColor(UIColor.black, for: .normal)
                    self?.skipDeleteButton.setTitle("지우기", for: .normal)
                }
            }).disposed(by: rx.disposeBag)
    }
    
    private func setupSkipDeleteButton() {
        skipDeleteButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                switch self?.nextPage.value {
                case true:
                    self?.nextPage.accept(false)
                    self?.viewModel.deleteAll()
                default:
                    print("뷰컨 이동구현 데이터 전달 X")
                }
            }).disposed(by: rx.disposeBag)
    }
    
    private func setupNextButton() {
        nextButton.rx.tap
            .subscribe(onNext: { _ in
                print("뷰컨 이동궇견 데이터 전달 O")
            }).disposed(by: rx.disposeBag)
    }
}

private extension PriceViewController {
    
    private func bind() {
        bindLocationLabel()
        bindDateLabel()
        bindPriceLabel()
        bindAveragePriceLabel()
        bindBackButton()
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
        viewModel.apiPriceData
            .drive(serverPriceLabel.rx.text)
            .disposed(by: rx.disposeBag)
        
        viewModel.userPriceData
            .drive(priceLabel.rx.text)
            .disposed(by: rx.disposeBag)
    }
    
    private func bindAveragePriceLabel() {
        viewModel.averagePriceData
            .drive(averagePriceLabel.rx.text)
            .disposed(by: rx.disposeBag)
    }
    
    private func bindBackButton() {
        bakButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                self?.dismiss(animated: true, completion: nil)
            }).disposed(by: rx.disposeBag)
    }
}

extension PriceViewController: RangeSeekSliderDelegate {
    func rangeSeekSlider(_ slider: RangeSeekSlider, didChange minValue: CGFloat, maxValue: CGFloat) {
        let priceRange = [Int(minValue), Int(maxValue)]
        viewModel.append(priceRange)
        switch priceLabel.text {
        case "": nextPage.accept(false)
        default: nextPage.accept(true)
        }
    }
}
