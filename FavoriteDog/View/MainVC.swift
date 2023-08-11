//
//  MainVC.swift
//  FavoriteDog
//
//  Created by 이지수 on 2023/08/10.
//

import UIKit

class MainVC: UIViewController {

    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func pressedListButton(_ sender: Any) {
        guard let listVCInstance = self.storyboard?.instantiateViewController(identifier: "ListVC") else {
            return
        }
        // full screen
        listVCInstance.modalPresentationStyle = .fullScreen
        self.present(listVCInstance, animated: false)
    }
    @IBAction func pressedFavoriteButton(_ sender: Any) {
        guard let favoriteVCInstance = self.storyboard?.instantiateViewController(withIdentifier: "FavoriteVC") else {
            return
        }
        // full screen
        favoriteVCInstance.modalPresentationStyle = .fullScreen
        self.present(favoriteVCInstance, animated: false)
    }
    

}

