//
//  imagesModel.swift
//  QuizApp
//
//  Created by 岡崎流依 on 2021/05/27.
//

import Foundation

class ImagesModel {
//    画像名を取得して、画像名が人間かそうでないかをフラグによって判定する
    let imageText:String?
    let ans:Bool
    
    init(imageName:String, correntOrNot:Bool) {
        imageText = imageName
        ans = correntOrNot
    }
    
}
