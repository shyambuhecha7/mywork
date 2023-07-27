//
//  CollectionviewVC.swift
//  PricticeiOS
//
//  Created by Shyam Buhecha on 25/07/23.
//

import UIKit

class CollectionviewVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
      

    @IBOutlet weak var collectionview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionview.delegate = self
        collectionview.dataSource = self
       
        collectionview.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moviesData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.layer.borderColor = CGColor.init(red: CGFloat(0), green: CGFloat(0), blue: CGFloat(0), alpha: CGFloat(1))
        cell.layer.borderWidth = 1
        cell.setupCell(movie: moviesData[indexPath.row])
        return cell
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}
