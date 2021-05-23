//
//  ImageView+Load.swift
//  airbnb
//
//  Created by 양준혁 on 2021/05/23.
//

import UIKit

extension UIImageView {
    func load(with string: String) {
        guard let url = URL(string: string) else { return }
        DispatchQueue.global().async {
            guard let data = try? Data(contentsOf: url) else { return }
            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
        }
    }
}
