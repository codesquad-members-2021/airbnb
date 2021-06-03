//
//  AccommodationCell.swift
//  Airbnb
//
//  Created by Lia on 2021/06/03.
//

import UIKit

class AccommodationCell: UICollectionViewCell {

    static let reuseIdentifier = "AccommodationCell"
    static let nib = UINib(nibName: AccommodationCell.reuseIdentifier, bundle: nil)
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func fillUI(with room: Room) {
        self.convert(imageUrlString: room.images.mainImage) { uiimage in
            self.mainImageView.image = uiimage
        }
        self.gradeLabel.text = "\(room.grade)"
        self.reviewLabel.text = "후기 \(room.review ?? 0)개"
        self.titleLabel.text = room.title
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let price = numberFormatter.string(from: NSNumber(value: room.price))!
        self.priceLabel.text = "₩\(price) / 박"
    }
    
    private func convert(imageUrlString: String, handler: @escaping (UIImage) ->()) {
        guard let url = URL(string: imageUrlString) else { return }
        DispatchQueue.main.async {
            let data = try? Data(contentsOf: url)
         handler(UIImage(data: data!) ?? UIImage())
        }
    }
}
