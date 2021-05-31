//
//  NumberOfHeadSelectionView.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/27.
//

import UIKit

class NumberOfHeadSelectionView: UIView {
    
    var adultNumberAdjustmentView: NumberAdjustmentView?
    var childNumberAdjustmentView: NumberAdjustmentView?
    var infantNumberAdjustmentView: NumberAdjustmentView?
    
    public init() {
        super.init(frame: .zero)
        configureNumberAdjustmentViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)

    }

    private func configureNumberAdjustmentViews() {

        self.adultNumberAdjustmentView = NumberAdjustmentView()
        adultNumberAdjustmentView?.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(adultNumberAdjustmentView!)
        
        adultNumberAdjustmentView?.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        adultNumberAdjustmentView?.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        adultNumberAdjustmentView?.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.3).isActive = true
    }
    
}
