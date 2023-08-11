//
//  ImageManager.swift
//  FavoriteDog
//
//  Created by 이지수 on 2023/08/11.
//

import Combine

class ImageManager: ObservableObject {
    @Published private var images: [Image]
    @Published private var favoriteImages: [Image]

    // C
    
    // R

    // U

    // D
}

//MARK: - Helper
extension ImageManager {
    fileprivate func loadImagesFromWeb() -> [Image] {
        NetworkManager.getImages(resource: "https://random.dog/woof.json")
        
        return []
    }
}



