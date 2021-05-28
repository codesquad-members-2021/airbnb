//
//  NumberOfHeadSelectionView.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/27.
//

import UIKit

class NumberOfHeadSelectionView: UIView {

    @IBOutlet weak var adultNumberView: UIView!
        
    private var adultNumberAdjustmentView: NumberAdjustmentView?
    private var childNumberAdjustmentView: NumberAdjustmentView?
    private var infantNumberAdjustmentView: NumberAdjustmentView?
    
    private var adultHeadNumber: Int = 0
    private var childHeadNumber: Int = 0
    private var infantHeadNumber: Int = 0
    
    init() {
        super.init(frame: .zero)
        configureNumberAdjustmentView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureNumberAdjustmentView()
    }
    
    private func configureNumberAdjustmentView() {
        
        self.adultNumberAdjustmentView = NumberAdjustmentView()
        self.adultNumberView.addSubview(adultNumberAdjustmentView!)
        setSubViewLayout(adultNumberAdjustmentView!, to: adultNumberView)
        
    }
    
    private func setSubViewLayout(_ subview: UIView, to superView: UIView) {
        NSLayoutConstraint.activate([
            subview.centerYAnchor.constraint(equalTo: superView.centerYAnchor),
            subview.heightAnchor.constraint(equalTo: superview!.heightAnchor, multiplier: 0.7)
                                        ])
    }
}
