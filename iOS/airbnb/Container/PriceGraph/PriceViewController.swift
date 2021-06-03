//
//  PriceViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import UIKit
import Combine

class PriceViewController: UIViewController {
    
    weak var infoDelegate : SelectInfoDelegate?
    
    var graphView : PriceGraphView!
    var localName : String?
    
    private var cancellables = Set<AnyCancellable>()
    private var prices: PriceResponse?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpGraphView()
        fetchPrices()
    }
    
    func setUpGraphView(){
        let padding: CGFloat = 16
        let frame = CGRect(x: padding, y: 164, width: self.view.frame.width - padding, height: 100)
        
        graphView = PriceGraphView(frame: frame)
        view.center = CGPoint(x: self.view.frame.size.width  / 2,
                              y: self.view.frame.size.height / 2)
        self.view.addSubview(graphView)
    }
    
    func fetchPrices() {
        PriceNetworkDispatcher()
            .execute(decodeType: PriceResponse.self)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error): print(error.message)
                case .finished: break
                }
            }, receiveValue: { response in
                self.prices = response
            })
            .store(in: &cancellables)
    }
    
}
