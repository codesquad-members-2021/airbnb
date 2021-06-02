import UIKit
import RxSwift
import RxCocoa
import RangeSeekSlider

final class PriceViewController: UIViewController {
    
    
    @IBOutlet weak var averagePriceLabel: UILabel!
    @IBOutlet weak var serverPriceLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var bakButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var skipDeleteButton: UIButton!
    
    private lazy var graphView:GraphView = {
        let graphView = GraphView(frame: .zero, values: PriceInfo.graph)
        return graphView
    }()
    
    private lazy var rangeSlider:RangeSeekSlider = {
        let slider = RangeSeekSlider(frame: .zero)
        let min = viewModel.getPriceInfo().min() ?? 0
        let max = viewModel.getPriceInfo().max() ?? 0
        slider.hideLabels = true
        slider.handleBorderColor = UIColor.black
        slider.handleColor = UIColor.systemGray
        slider.handleDiameter = 20
        slider.tintColor = UIColor.black
        slider.minValue = CGFloat(min)
        slider.maxValue = CGFloat(max)
        slider.selectedMaxValue = CGFloat(max)
        slider.delegate = self
        return slider
    }()
    
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
        setupGraphView()
        setupSlider()
        setupButtonObserver()
        setupSkipDeleteButton()
        setupNextButton()
    }
    
    private func setupGraphView() {
        view.addSubview(graphView)
        graphView.isUserInteractionEnabled = true
        graphView.translatesAutoresizingMaskIntoConstraints = false
        graphView.topAnchor.constraint(equalTo: averagePriceLabel.bottomAnchor, constant: 40).isActive = true
        graphView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        graphView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        graphView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
    }
    
    private func setupSlider() {
        graphView.addSubview(rangeSlider)
        rangeSlider.layer.zPosition = 1
        rangeSlider.translatesAutoresizingMaskIntoConstraints = false
        rangeSlider.bottomAnchor.constraint(equalTo: graphView.bottomAnchor, constant: 0).isActive = true
        rangeSlider.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rangeSlider.widthAnchor.constraint(equalTo: graphView.widthAnchor, multiplier: 1.1).isActive = true
        rangeSlider.heightAnchor.constraint(equalToConstant: 10).isActive = true
    }
    
    private func setupButtonObserver() {
        nextPage.asObservable()
            .subscribe(onNext: { [weak self] next in
                switch next {
                case false:
                    self?.nextButton.isEnabled = false
                    self?.nextButton.setTitleColor(UIColor.systemGray2, for: .normal)
                    self?.skipDeleteButton.setTitle("건너뛰기", for: .normal)
                case true:
                    self?.nextButton.isEnabled = true
                    self?.nextButton.setTitleColor(UIColor.black, for: .normal)
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
                    let nextVC = self?.storyboard?.instantiateViewController(withIdentifier: "GuestVC") as! GuestViewController
                    nextVC.modalTransitionStyle = .crossDissolve
                    nextVC.modalPresentationStyle = .fullScreen
                    self?.present(nextVC, animated: true, completion: nil)
                }
            }).disposed(by: rx.disposeBag)
    }
    
    private func setupNextButton() {
        nextButton.rx.tap
            .subscribe(onNext: { [weak self] _ in
                let nextVC = self?.storyboard?.instantiateViewController(withIdentifier: "GuestVC") as! GuestViewController
                nextVC.setupInfo(self?.locationLabel.text ?? "", self?.dateLabel.text ?? "", self?.priceLabel.text ?? "")
                nextVC.modalTransitionStyle = .crossDissolve
                nextVC.modalPresentationStyle = .fullScreen
                self?.present(nextVC, animated: true, completion: nil)
                //데이터 넘겨야함
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
        let prigeRange = [Int(minValue), Int(maxValue)]
        viewModel.append(prigeRange)
        switch priceLabel.text {
        case "": nextPage.accept(false)
        default: nextPage.accept(true)
        }
    }
}
