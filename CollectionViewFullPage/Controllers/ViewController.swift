//
//  ViewController.swift
//  CollectionViewFullPage
//
//  Created by ElAmir Mansour on 08/05/2023.
//

import UIKit




class ViewController: UIViewController , UICollectionViewDelegate ,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    

    @IBOutlet weak var collectionView: UICollectionView!
    

    
   
   

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self

        
        for cellType in Constants.cellTypes {
            collectionView.register(UINib(nibName: cellType.cellClass, bundle: nil), forCellWithReuseIdentifier: cellType.rawValue)
        }

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return Constants.cellTypes.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch Constants.cellTypes[section] {
          case .home:
            return Constants.home.data.count
          case .mainCategories:
            return Constants.mainCategories.data.count
          case .mostOrdered:
            return Constants.mostOrdered.data.count
          case .mostRated:
            return Constants.mostRated.data.count
          }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellType = Constants.cellTypes[indexPath.section]
          let identifier = cellType.rawValue
          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)

          switch cellType {
          case .home:
              guard let homeCell = cell as? HomeCollectionViewCell else { return cell }
              
              homeCell.configure(with: Constants.home.data[indexPath.row])
              
              return homeCell

          case .mainCategories:
              guard let mainCatCell = cell as? MainCategoriesCollectionViewCell else { return cell }
              mainCatCell.configure(with: Constants.mainCategories.data[indexPath.row])
              return mainCatCell
          case .mostOrdered:
              guard let mostOrderedCell = cell as? MostOrderedCollectionViewCell else { return cell }
              mostOrderedCell.configure(with: Constants.mostOrdered.data[indexPath.row])
              return mostOrderedCell
          case .mostRated:
              guard let mostRatedCell = cell as? MostRatedCollectionViewCell else { return cell }
              mostRatedCell.configure(with: Constants.mostRated.data[indexPath.row])
              return mostRatedCell
          }
    }

}

