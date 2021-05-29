//
//  Calc.swift
//  practice
//
//  Created by 岡崎流依 on 2021/05/29.
//

import Foundation
import UIKit

class Calc {
    func PlusAndMinus(SenderTag: UIButton) -> Int {
        if SenderTag.tag == 1 {
            return 1
        } else if SenderTag.tag == 2 {
            return -1
        } else {
            print("ERR - CalcClass")
            return -1000000
        }
    }
}
