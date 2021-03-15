//
//  HorizontalViewController.swift
//  CollectionView
//
//  Created by 조주혁 on 2021/03/14.
//

import UIKit

class HorizontalViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.isPagingEnabled = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension HorizontalViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HorizontalCollectionViewCell", for: indexPath) as! HorizontalCollectionViewCell
//        cell.clipsToBounds = true
//        cell.layer.cornerRadius = cell.frame.height * 0.5
//        cell.layer.borderWidth = 1.0
//        cell.layer.borderColor = UIColor.clear.cgColor
        

        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        
        return cell
    }
    
}
