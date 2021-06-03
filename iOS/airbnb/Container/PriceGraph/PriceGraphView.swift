//
//  PriceGraphView.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import UIKit

class PriceGraphView: UIView {
    
    private let graphLayer = CAShapeLayer()
    private let graphPath = UIBezierPath()
    
    private var priceCountInRange : [(range: Int, count: Int)]

    private lazy var widthOffset = {
        return self.frame.width / CGFloat(priceCountInRange.count)
    }()
    
    init(frame: CGRect, prices: [(Int, Int)]){
        self.priceCountInRange = prices
        super.init(frame: frame)
    }
    
    override init(frame: CGRect) {
        self.priceCountInRange = []
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.priceCountInRange = []
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        var currentX: CGFloat = 0
        let startPoint = CGPoint(x: currentX, y: self.frame.height)
        
        self.graphPath.move(to: startPoint)
        
        // TODO: 좌표 이동후 그리는 작업 필요
        
        graphLayer.fillColor = nil
        graphLayer.strokeColor = UIColor.black.cgColor
        graphLayer.lineWidth = 2
        graphLayer.path = graphPath.cgPath
        self.layer.addSublayer(graphLayer)
    }
}
