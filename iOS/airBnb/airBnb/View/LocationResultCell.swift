//
//  LocationResultCell.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/20.
//

import UIKit

class LocationResultCell: UITableViewCell {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    private var locationImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "locationPoint")
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor(named: "BoardColor")?.cgColor
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private var locationLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 17)
        return label
    }()
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func setupUI() {
        self.addSubview(locationImage)
        self.addSubview(locationLabel)
        
        NSLayoutConstraint.activate([
            locationImage.widthAnchor.constraint(equalToConstant: 64),
            locationImage.heightAnchor.constraint(equalToConstant: 64),
            locationImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            locationImage.trailingAnchor.constraint(equalTo: locationLabel.leadingAnchor, constant: -16),
            locationImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            locationImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            
            locationLabel.centerYAnchor.constraint(equalTo: locationImage.centerYAnchor)
        ])
    }
    
    func configure(city: CityInfoList) {
        locationLabel.text = city.address
    }
}
