//
//  InformationView.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/25.
//

import UIKit

class InformationView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetUp()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        xibSetUp()
    }
    
    private func xibSetUp() {
        guard let view = loadViewFromNib(nib: "InformationView") else { return }
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }
    
    private func loadViewFromNib(nib: String) -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nib, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
