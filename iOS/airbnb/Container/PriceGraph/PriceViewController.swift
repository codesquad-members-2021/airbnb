//
//  PriceViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import UIKit
import Combine

class PriceViewController: UIViewController {
    
    @IBOutlet weak var averageLabel: UILabel!
    
    weak var costDelegate : SelectCostDelegate?
    
    var graphView : PriceGraphView!
    var localName : String?
    
    private var cancellables = Set<AnyCancellable>()
    private var prices: PriceInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchPrices()
    }
    
    func setUpGraphView(){
        let padding: CGFloat = 16
        let frame = CGRect(x: padding, y: 164, width: self.view.frame.width - padding*2, height: 100)
        
        graphView = PriceGraphView(frame: frame, prices: prices!)
        self.view.addSubview(graphView)
    }
    
    func fetchPrices() {
        PriceNetworkDispatcher()
            .execute(decodeType: PriceInfo.self)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error): print(error.message)
                case .finished: break
                }
            }, receiveValue: { [weak self] response in
                self?.prices = response
                guard let decimal = self?.addDecimal(value: Int32(response.average)) else { return }
                self?.averageLabel.text = "평균 1박 요금은 \(decimal)입니다"
                self?.setUpGraphView()
            })
            .store(in: &cancellables)
    }
    
    func addDecimal(value: Int32) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let result = numberFormatter.string(from: NSNumber(value: value))! + "원"
        return result
    }
}
