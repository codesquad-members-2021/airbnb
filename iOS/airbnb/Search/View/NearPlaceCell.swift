//
//  TravelPlaceCell.swift
//  airbnb
//
//  Created by 박혜원 on 2021/05/18.
//

import UIKit

class NearPlaceCell: UICollectionViewCell, IdentityInfo {

    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var areaTitle: UILabel!
    @IBOutlet weak var timeRequired: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        thumbnail.layer.cornerRadius = 10
        self.activityIndicator.startAnimating()
    }

    func configurePlace(with place : NearPlace?){
        guard let place = place else { return }
        
        self.areaTitle.text = place.name
        self.timeRequired.text = "차로 \(place.distance)분 소요"
        guard let url = place.avatarUrl else { return }
        
        self.thumbnail.downloadImage(from: url, completion: { [weak self] in
            self?.activityIndicator.stopAnimating()
            self?.activityIndicator.isHidden = true
        })
    }

}
