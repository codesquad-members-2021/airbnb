//
//  LocationCell.swift
//  airBnb
//
//  Created by HOONHA CHOI on 2021/05/19.
//

import UIKit

class LocationCell: UITableViewCell {
    
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
    
    private var cityImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10
        imageView.backgroundColor = .red
        return imageView
    }()
    
    private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 4
        return stackView
    }()
    
    private var cityLabel: UILabel = {
        let city = UILabel()
        city.translatesAutoresizingMaskIntoConstraints = false
        city.text = ""
        city.textColor = UIColor(named: "CityColor")
        return city
    }()
    
    private var distanceLabel: UILabel = {
        let distance = UILabel()
        distance.translatesAutoresizingMaskIntoConstraints = false
        distance.text = "차로 30분 거리"
        distance.textColor = UIColor(named: "DistanceColor")
        return distance
    }()
    
    private func setupUI() {
        self.addSubview(cityImage)
        self.addSubview(stackView)
        stackView.addArrangedSubview(cityLabel)
        stackView.addArrangedSubview(distanceLabel)
        
        NSLayoutConstraint.activate([
            cityImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            cityImage.trailingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: -16),
            cityImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            cityImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            cityImage.widthAnchor.constraint(equalToConstant: 64),
            cityImage.heightAnchor.constraint(equalToConstant: 64),
            
            stackView.centerYAnchor.constraint(equalTo: cityImage.centerYAnchor),
            
        ])
    }
    
    func configure(city: String) {
        cityLabel.text = city
    }
    
}
