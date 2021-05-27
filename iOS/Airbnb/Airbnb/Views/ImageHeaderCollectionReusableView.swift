//
//  ImageHeaderCollectionReusableView.swift
//  Airbnb
//
//  Created by Ador on 2021/05/26.
//

import UIKit

class ImageHeaderCollectionReusableView: UICollectionReusableView {
    static let reuseId = "ImageHeaderCollectionReusableView"
    
    private let mainImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "home"))
        imageView.contentMode = .scaleAspectFill
        let xPosition = imageView.frame.origin.x + 20
        let title = UILabel(frame: CGRect(x: xPosition,
                                          y: imageView.frame.origin.y + 20,
                                          width: imageView.frame.width,
                                          height: 60))
        title.text = "슬기로운 자연생활"
        title.font = UIFont(name: "helvetica", size: 34)
        let subtitle = UILabel(frame: CGRect(x: xPosition,
                                             y: title.frame.origin.y + title.frame.height,
                                             width: imageView.frame.width,
                                             height: 60))
        subtitle.text = "에어비엔비가 엄선한 \n위시리스트를 만나보세요."
        subtitle.numberOfLines = 0
        let button = UILabel(frame: CGRect(x: xPosition,
                                           y: subtitle.frame.origin.y + subtitle.frame.height + 10,
                                           width: 165,
                                           height: 38))
        button.backgroundColor = .systemGray
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.textAlignment = .center
        button.text = "여행 아이디어 얻기"
        imageView.addSubview(title)
        imageView.addSubview(subtitle)
        imageView.addSubview(button)
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(mainImageView)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.addSubview(mainImageView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        mainImageView.frame = self.bounds
    }
}
