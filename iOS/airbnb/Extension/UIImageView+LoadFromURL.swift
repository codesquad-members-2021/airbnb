//
//  UIImageView+LoadFromURL.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/27.
//

import UIKit

extension UIImageView {
    func downloadImage(from url: URL, completion: @escaping () -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
            else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
                completion()
            }
        }.resume()
    }
}

