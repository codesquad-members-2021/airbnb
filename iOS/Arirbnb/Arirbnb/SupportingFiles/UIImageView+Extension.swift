//
//  UIImageView+Extension.swift
//  Arirbnb
//
//  Created by 지북 on 2021/05/21.
//

import UIKit
import Kingfisher

extension UIImageView {
    func load(url: String?) {
        let url = URL(string: url!)
        self.kf.setImage(with: url) { result in
            switch result {
            case .success(_):
                break
            case .failure(_):
                self.image = UIImage(named: "LoadFail.jpg")
            }
        }
    }
}
