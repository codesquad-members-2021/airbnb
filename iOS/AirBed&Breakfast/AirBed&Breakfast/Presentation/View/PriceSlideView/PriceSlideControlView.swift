//
//  PriceSlideControllerView.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/24.
//

import UIKit

protocol PriceInfoReceivable {
    func updatePriceInfo(lowestPrice: CGFloat, highestPrice: CGFloat)
}

class PriceSlideControlView: UIView {
    
    private var minimumPrice: CGFloat?
    private var maximumPrice: CGFloat?
    private var rangeSlider: RangeSlider! = nil
    public var priceInfoReceivable: PriceInfoReceivable?
    
    override var frame: CGRect {
        didSet {
            configureRangeSlider()
        }
    }
    
    public init() {
        super.init(frame: .zero)
        self.backgroundColor = .red
        configureRangeSlider()
        rangeSlider.addTarget(self, action: #selector(rangeSliderValueChanged(_:)),
                              for: .valueChanged)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public func configureRangeSlider() {
        self.rangeSlider = RangeSlider(frame: self.frame)
        self.addSubview(rangeSlider)
        rangeSlider.translatesAutoresizingMaskIntoConstraints = false
        rangeSlider.backgroundColor = .blue
        
        NSLayoutConstraint.activate([
            rangeSlider.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            rangeSlider.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            rangeSlider.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8),
            rangeSlider.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5)
        ])
    }
    
    public func clearRangeSlider() {
        self.rangeSlider.clear()
    }
    
    @objc func rangeSliderValueChanged(_ rangeSlider: RangeSlider) {
        // for test
        self.minimumPrice = 10_000
        self.maximumPrice = 1_000_000
        
        priceInfoReceivable?.updatePriceInfo(lowestPrice: rangeSlider.lowerValue * minimumPrice!, highestPrice: rangeSlider.upperValue * maximumPrice!)
    }

}
