//
//  Calc.swift
//  CalcApp
//
//  Created by 岡崎流依 on 2021/05/22.
//

import Foundation

class Calc {
    
    var total:Int
    
    
    init() {
        total = 0
    }
    
    func sum(num1:String,num2:String) -> String {
        let number1 = Int(num1)
        let number2 = Int(num2)
        total = (number1 ?? 0) + (number2 ?? 0)
        return String(total)
    }
    
}

