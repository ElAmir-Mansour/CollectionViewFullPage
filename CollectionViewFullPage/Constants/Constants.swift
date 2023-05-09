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
        var title: String
        var data: [CellData]
    }

    struct CellData {
        let image: UIImage
        var name: String
        var des: String
    }
    
    // MARK: Variables

    static let cellTypes: [CellType] = [.home, .mainCategories, .mostOrdered, .mostRated]

    static let home = Cell(title: "Home", data: [
        CellData(image: treeImage, name: "", des: ""),
        CellData(image: treeImage, name: "", des: ""),
        CellData(image: treeImage, name: "", des: ""),
        CellData(image: treeImage, name: "", des: "")

        
    ])
    
    static let mainCategories = Cell(title: "Main Categories", data: [
        CellData(image: treeImage, name: "Tree", des: "A beautiful tree"),
        CellData(image: sunset, name: "Sunset", des: "A stunning sunset"),
        CellData(image: butterflys, name: "Butterflys", des: "A group of butterflys")
    ])
    
    static let mostOrdered = Cell(title: "Most Ordered", data: [
        CellData(image: treeImage, name: "Tree", des: "A beautiful tree"),
        CellData(image: sunset, name: "Sunset", des: "A stunning sunset"),
        CellData(image: butterflys, name: "Butterflys", des: "A group of butterflys")
    ])
    
    static let mostRated = Cell(title: "Most Rated", data: [
        CellData(image: treeImage, name: "Tree", des: "A beautiful tree"),
        CellData(image: sunset, name: "Sunset", des: "A stunning sunset"),
        CellData(image: butterflys, name: "Butterflys", des: "A group of butterflys")
    ])

    static let cells: [Cell] = [home, mainCategories, mostOrdered, mostRated]
    

    static let treeImage = UIImage(named: "Tree")!
    static let sunset = UIImage(named: "Sunset")!
    static let butterflys = UIImage(named: "Butterflys")!
    
    
}

