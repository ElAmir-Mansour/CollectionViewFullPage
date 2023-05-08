//
//  MainCategoriesCollectionViewCell.swift
//  CollectionViewFullPage
//
//  Created by ElAmir Mansour on 08/05/2023.
//

import UIKit

class MainCategoriesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var catImg: UIImageView!
    
    @IBOutlet weak var catTitle: UILabel!
    func configure(with data: Constants.CellData) {
        catImg.image = data.image
        catTitle.text = data.name
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
