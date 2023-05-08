//
//  ViewController.swift
//  CollectionViewFullPage
//
//  Created by ElAmir Mansour on 08/05/2023.
//

import UIKit




class ViewController: UIViewController , UICollectionViewDelegate ,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    

    var constant = Constants()
    @IBOutlet weak var collectionView: UICollectionView!
    

    
   
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for cellType in Constants.cellTypes {
            collectionView.register(cellType.cellClass, forCellWithReuseIdentifier: cellType.rawValue)
        }

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    


}


extension ViewController {
    
    
}
