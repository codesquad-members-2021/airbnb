//
//  PriceViewController.swift
//  airbnb
//
//  Created by 박혜원 on 2021/06/03.
//

import UIKit

class PriceViewController: UIViewController {
    
    weak var infoDelegate : SelectInfoDelegate?
    
    var graphView : PriceGraphView!
    var localName : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpGraphView()
    }
    
    func setUpGraphView(){
        let padding: CGFloat = 16
        let frame = CGRect(x: padding, y: 164, width: self.view.frame.width - padding, height: 100)
        
        graphView = PriceGraphView(frame: frame)
        view.center = CGPoint(x: self.view.frame.size.width  / 2,
                              y: self.view.frame.size.height / 2)
        self.view.addSubview(graphView)
    }
    
    func fetchPrices() -> [CGFloat] {
        return [10,200,300,500,600,400,700,3000,600,150,200]
    }
    
}
