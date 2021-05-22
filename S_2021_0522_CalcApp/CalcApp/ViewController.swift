//
//  ViewController.swift
//  CalcApp
//
//  Created by 岡崎流依 on 2021/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    var carModel = Car(Wheel: 10)
    
    var calcModel = Calc()
    
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var output: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        carModel.frontWheel = 10
        carModel.rearWheel = 10

    }

    @IBAction func doAction(_ sender: Any) {
        
//        === Car Class ===
        carModel.drive()
        carModel.move(toBack: "後ろにいくよ！")
        let total = carModel.plusAndMinus(num1: carModel.frontWheel, num2: carModel.rearWheel)
        print("タイヤの合計数 : \(total)")
        
//        === Calc Class ===
        
        output.text = calcModel.sum(num1: num1.text! , num2: num2.text! )
        
        
    }
    
    
}

