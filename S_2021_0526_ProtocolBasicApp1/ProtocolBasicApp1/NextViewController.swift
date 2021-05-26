//
//  NextViewController.swift
//  ProtocolBasicApp1
//
//  Created by 岡崎流依 on 2021/05/26.
//

import UIKit

protocol CatchProtocol {
    
//    規則を決める
    func catchData(count:Int)
    
}

class NextViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var count:Int = 0
    
    var aiueoBox:CatchProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(count)
        
    }
    
    @IBAction func plusAction(_ sender: Any) {
        count += 1
        label.text = String(count)
    }
    
    @IBAction func back(_ sender: Any) {
        aiueoBox?.catchData(count: count)
//        デリゲートメソッドを別のクラスで発動させる
        dismiss(animated: true, completion: nil)
    }
    
}
