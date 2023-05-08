//
//  HomeCollectionViewCell.swift
//  CollectionViewFullPage
//
//  Created by ElAmir Mansour on 08/05/2023.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var img: UIImageView!
    
    func configure(with data: Constants.CellData) {
        img.image = data.image
   
    }
    
}
