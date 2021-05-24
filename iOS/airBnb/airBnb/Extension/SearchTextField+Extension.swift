//
//  SearchTextField+Extension.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/24.
//

import UIKit
import Combine

extension UISearchTextField {
    var searchTextPublisher: AnyPublisher<String, Never> {
        NotificationCenter.default.publisher(for: UISearchTextField.textDidChangeNotification, object: self)
            .compactMap { $0.object as? UISearchTextField }
            .map { $0.text ?? "" }
            .debounce(for: .seconds(0.5), scheduler: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
