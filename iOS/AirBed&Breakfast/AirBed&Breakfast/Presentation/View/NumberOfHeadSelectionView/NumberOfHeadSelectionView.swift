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
        self.childNumberAdjustmentView = NumberAdjustmentView()
        self.infantNumberAdjustmentView = NumberAdjustmentView()
        
        guard let subView1 = adultNumberAdjustmentView else { return }
        guard let subView2 = childNumberAdjustmentView else { return }
        guard let subView3 = infantNumberAdjustmentView else { return }
        
        subView1.translatesAutoresizingMaskIntoConstraints = false
        subView2.translatesAutoresizingMaskIntoConstraints = false
        subView3.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(subView1)
        self.addSubview(subView2)
        self.addSubview(subView3)
        
        NSLayoutConstraint.activate([
            subView1.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            subView1.widthAnchor.constraint(equalTo: self.widthAnchor),
            subView1.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2),
            
            subView2.topAnchor.constraint(equalTo: subView1.bottomAnchor),
            subView2.widthAnchor.constraint(equalTo: self.widthAnchor),
            subView2.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2),
            
            subView3.topAnchor.constraint(equalTo: subView2.bottomAnchor),
            subView3.widthAnchor.constraint(equalTo: self.widthAnchor),
            subView3.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2)
        ])
    }
    
}
