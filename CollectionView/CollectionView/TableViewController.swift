//
//  TableViewController.swift
//  CollectionView
//
//  Created by 조주혁 on 2021/03/15.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}

extension TableViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TableCollectionViewCell", for: indexPath) as! TableCollectionViewCell
        
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 10
        
        return cell
    }
    
    
}
