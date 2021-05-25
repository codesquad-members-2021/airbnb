//
//  HeaderReusableView.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

class HeaderReusableView: UICollectionReusableView, IdentityInfo {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    func configure(){
        
    }
}
