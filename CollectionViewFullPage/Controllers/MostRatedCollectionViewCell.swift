//
//  MostRatedCollectionViewCell.swift
//  CollectionViewFullPage
//
//  Created by ElAmir Mansour on 08/05/2023.
//

import UIKit

class MostRatedCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var mostRatedHeader: UILabel!
    
    @IBOutlet weak var mostRatedImg: UIImageView!
    @IBOutlet weak var mostRatedDescription: UILabel!
    func configure(with data: Constants.CellData) {
        mostRatedImg.image = data.image
        mostRatedHeader.text = data.name
        mostRatedDescription.text = data.des
    }
}
