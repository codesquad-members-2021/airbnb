//
//  RoomCell.swift
//  Airbnb
//
//  Created by Lia on 2021/06/04.
//

import UIKit

class RoomCell: UICollectionViewCell {
    let imageView = UIImageView()
    
    static let reuseIdentifier = "RoomCell"

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}


extension RoomCell {
    
    private func configure() {
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        let inset = CGFloat(0)
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: inset),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -inset),
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: inset),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -inset)
        ])

    }
    
    func fillUI(with image: UIImage) {
        imageView.image = image
    }
    
}
