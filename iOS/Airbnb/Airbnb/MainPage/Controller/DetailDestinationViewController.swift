//
//  DetailDestinationViewController.swift
//  Airbnb
//
//  Created by Lia on 2021/05/20.
//

import UIKit

class DetailDestinationViewController: UIViewController {

    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configure()
        view.backgroundColor = .systemBackground
        label.text = "이미지 준비 중"
        label.textAlignment = .center
    }
    
    private func configure() {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.adjustsFontForContentSizeCategory = true
        let inset = CGFloat(10)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: inset),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -inset),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: inset),
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -inset)
        ])
        label.font = UIFont.preferredFont(forTextStyle: .title2)
    }
    
}
