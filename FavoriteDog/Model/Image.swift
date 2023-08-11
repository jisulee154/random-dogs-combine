//
//  Image.swift
//  FavoriteDog
//
//  Created by 이지수 on 2023/08/11.
//

import Foundation

class Image {
    private var id: Int // 목록에 표시되는 순서
    private var address: String // 이미지 주소
    private var isFavoriet: Bool // 즐겨찾기 여부
    
    init(id: Int, address: String, isFavoriet: Bool = false) {
        self.id = id
        self.address = address
        self.isFavoriet = isFavoriet
    }
    
}
