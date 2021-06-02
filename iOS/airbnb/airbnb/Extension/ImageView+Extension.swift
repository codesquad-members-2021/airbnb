//
//  ImageView+Extension.swift
//  airbnb
//
//  Created by 심영민 on 2021/05/26.
//

import UIKit
import Kingfisher

extension UIImageView {
    func load(url: String) {
        DispatchQueue.global().async {
            guard let url = URL(string: url) else {
                return
            }
            DispatchQueue.main.async {
                self.kf.setImage(with: url)
            }
        }
    }
}
