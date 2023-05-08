//
//  MostOrderedCollectionViewCell.swift
//  CollectionViewFullPage
//
//  Created by ElAmir Mansour on 08/05/2023.
//

import UIKit

class MostOrderedCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var mostOrderedDescription: UILabel!
    @IBOutlet weak var mostOrderedHeader: UILabel!
    @IBOutlet weak var mostOrderedImg: UIImageView!
    func configure(with data: Constants.CellData) {
        mostOrderedImg.image = data.image
        mostOrderedHeader.text = data.name
        mostOrderedDescription.text = data.des
    }
}
