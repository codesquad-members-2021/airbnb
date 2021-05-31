//
//  NumberAdjustmentView.swift
//  AirBed&Breakfast
//
//  Created by 조중윤 on 2021/05/27.
//

import UIKit

class NumberAdjustmentView: UIView {
    
    
    //MARK:- Properties
    let titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.minimumScaleFactor = 0.3
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .black
        label.backgroundColor = .white
        return label
    }()
    
    let explanatoryLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .darkGray
        label.backgroundColor = .orange
        return label
    }()
    
    let minusButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "minus.circle"), for: .normal)
        button.setPreferredSymbolConfiguration(.init(pointSize: 100), forImageIn: .normal)
        button.imageEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: 0)
        button.backgroundColor = .green
        
        return button
    }()
    
    let countLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0"
        label.font = UIFont.systemFont(ofSize: 30)
        label.minimumScaleFactor = 0.3
        label.adjustsFontSizeToFitWidth = true
        label.backgroundColor = .systemTeal
        label.textAlignment = .center
        label.baselineAdjustment = .alignCenters
        return label
    }()
    
    let plusButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "plus.circle"), for: .normal)
        button.setPreferredSymbolConfiguration(.init(pointSize: 100), forImageIn: .normal)
        button.backgroundColor = .yellow
        return button
    }()
    
    //MARK:- Initializers
    init() {
        super.init(frame: .zero)
        backgroundColor = .red
        configureTitleLabel()
        configureExplanatoryLabel()
        configurePlusButton()
        configureCountLabel()
        configureMinusButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    private func configureTitleLabel() {
        self.addSubview(self.titleLabel)
        titleLabel.text = "성인"
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    private func configureExplanatoryLabel() {
        self.addSubview(self.explanatoryLabel)
        explanatoryLabel.text = "설명이 들어갑니당"
        explanatoryLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        explanatoryLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        explanatoryLabel.heightAnchor.constraint(equalTo: titleLabel.heightAnchor, multiplier: 0.5).isActive = true
        
    }
    
    private func configurePlusButton() {
        self.addSubview(self.plusButton)
        plusButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        plusButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.13).isActive = true
        plusButton.heightAnchor.constraint(equalTo: plusButton.widthAnchor).isActive = true
        plusButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        
        
    }
    
    private func configureCountLabel() {
        self.addSubview(self.countLabel)
        countLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        countLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.1).isActive = true
        countLabel.heightAnchor.constraint(equalTo: countLabel.widthAnchor, multiplier: 1.5).isActive = true
        countLabel.rightAnchor.constraint(equalTo: self.plusButton.leftAnchor).isActive = true

    }
    
    private func configureMinusButton() {
        self.addSubview(self.minusButton)
        minusButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        minusButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.13).isActive = true
        minusButton.heightAnchor.constraint(equalTo: minusButton.widthAnchor).isActive = true
        minusButton.rightAnchor.constraint(equalTo: self.countLabel.leftAnchor).isActive = true
    }
    
}
