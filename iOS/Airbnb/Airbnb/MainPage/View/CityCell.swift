//
//  CityCell.swift
//  Airbnb
//
//  Created by Lia on 2021/05/20.
//

import UIKit

class CityCell: UICollectionViewCell {

    static let reuseIdentifier = "CityCell"
    static let nib = UINib(nibName: CityCell.reuseIdentifier, bundle: nil)
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var distance: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func fillUI(with city: City) {
        self.convert(imageUrlString: city.image) { uiimage in
            self.imageView.image = uiimage
        }
        
        self.name.text = city.name
        self.distance.text = "차로 \(city.distance)분 거리"
    }
    
    private func convert(imageUrlString: String, handler: @escaping (UIImage) ->()) {
        guard let url = URL(string: imageUrlString) else { return }
        DispatchQueue.main.async {
            let data = try? Data(contentsOf: url)
         handler(UIImage(data: data!) ?? UIImage())
        }
    }
    
}
