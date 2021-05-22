//
//  Car.swift
//  CalcApp
//
//  Created by 岡崎流依 on 2021/05/22.
//

import Foundation

class Car{
    var frontWheel = 0
    var rearWheel = 0
    
    init(Wheel:Int){
//        初期化する必要がある
        
        if (Wheel != 0) {
            frontWheel = Wheel / 2
            rearWheel = Wheel / 2
        }else{
            frontWheel = 2
            rearWheel = 2
        }
        
        
    }
    
//    MVCモデル
//    Model View Controller
    
    
    func drive(){
        print("運転開始")
        print("前輪 : \(frontWheel)")
        print("後輪 : \(rearWheel)")
        
    }
    
    func move(toBack:String){
        print(toBack)
    }
    
    func plusAndMinus(num1:Int,num2:Int) -> Int {
        return num1 + num2
    }
    
}
