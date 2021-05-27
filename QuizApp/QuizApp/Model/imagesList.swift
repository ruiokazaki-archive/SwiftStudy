//
//  imagesList.swift
//  QuizApp
//
//  Created by 岡崎流依 on 2021/05/27.
//

import Foundation

class ImagesList {
    var list = [ImagesModel]()
    
    init() {
        list.append(ImagesModel(imageName: "0", correntOrNot: true))
        list.append(ImagesModel(imageName: "1", correntOrNot: false))
        list.append(ImagesModel(imageName: "2", correntOrNot: false))
        list.append(ImagesModel(imageName: "3", correntOrNot: false))
        list.append(ImagesModel(imageName: "4", correntOrNot: true))
        list.append(ImagesModel(imageName: "5", correntOrNot: false))
        list.append(ImagesModel(imageName: "6", correntOrNot: true))
        list.append(ImagesModel(imageName: "7", correntOrNot: true))
        list.append(ImagesModel(imageName: "8", correntOrNot: false))
        list.append(ImagesModel(imageName: "9", correntOrNot: true))
        list.append(ImagesModel(imageName: "10", correntOrNot: true))
    }
    
}
