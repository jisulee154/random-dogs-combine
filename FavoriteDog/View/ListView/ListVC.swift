//
//  ListVC.swift
//  FavoriteDog
//
//  Created by 이지수 on 2023/08/10.
//

import UIKit

class ListVC: UIViewController {
    @IBAction func pressedBackButton(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: false)
    }
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
}

//MARK: - collection view data source
extension ListVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as! CustomCollectionViewCell
            
        cell.image?.image = UIImage(systemName: "star")
        cell.favoritePin?.text = ""
//        cell.image?.image = UIImage(systemName: "star.fill")
        return cell
        
    }
}

//MARK: - collection view delegate
extension ListVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //
    }
}
 
