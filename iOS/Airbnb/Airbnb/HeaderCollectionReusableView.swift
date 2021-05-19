//
//  HeaderCollectionReusableView.swift
//  Airbnb
//
//  Created by Ador on 2021/05/18.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    static let reuseId = "HeaderCollectionReusableView"

    private let headerView: UIView = {
        let view = UIView()
        return view
    }()
    
    private let title: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Helvetica", size: 20)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        headerView.addSubview(title)
        self.addSubview(headerView)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        headerView.frame = self.bounds
        title.frame = CGRect(x: headerView.frame.origin.x + 10, y: headerView.frame.origin.y, width: headerView.frame.width - 20, height: headerView.frame.height)
    }
    
    func configure(title: String) {
        self.title.text = title
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = ""
    }
}
