//
//  CategoryCell.swift
//  Airbnb
//
//  Created by Lia on 2021/05/20.
//

import UIKit

class CategoryCell: UICollectionViewCell {

    static let reuseIdentifier = "CategoryCell"
    static let nib = UINib(nibName: CategoryCell.reuseIdentifier, bundle: nil)
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func fillUI(with category: Category) {
        self.convert(imageUrlString: category.image) { uiimage in
            self.imageView.image = uiimage
        }
        self.descriptionLabel.text = category.category
    }
    
    private func convert(imageUrlString: String, handler: @escaping (UIImage) ->()) {
        guard let url = URL(string: imageUrlString) else { return }
        DispatchQueue.main.async {
            let data = try? Data(contentsOf: url)
         handler(UIImage(data: data!) ?? UIImage())
        }
    }
    
}
