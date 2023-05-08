//
//  Constants.swift
//  CollectionViewFullPage
//
//  Created by ElAmir Mansour on 08/05/2023.
//

import Foundation
import UIKit



enum CellType: String {
    case home = "homeCell"
    case mainCategories = "mainCatCell"
    case mostOrdered = "mostOrderedCell"
    case mostRated = "mostRatedCell"

    var cellClass: UICollectionViewCell.Type {
        switch self {
        case .home:
            return HomeCollectionViewCell.self
        case .mainCategories:
            return MainCategoriesCollectionViewCell.self
        case .mostOrdered:
            return MostOrderedCollectionViewCell.self
        case .mostRated:
            return MostRatedCollectionViewCell.self
        }
    }
}

struct Constants {
    struct Cell {
        let title: String
        let data: [CellData]
    }

    struct CellData {
        let image: UIImage
        let name: String
        let des: String
    }

    static let cellTypes: [CellType] = [.home, .mainCategories, .mostOrdered, .mostRated]

    static let treeImage = UIImage(named: "Tree")!
    static let sunset = UIImage(named: "Sunset")!
    static let butterflys = UIImage(named: "Butterflys")!
}

