//
//  NextViewController.swift
//  MapApp
//
//  Created by 岡崎流依 on 2021/05/26.
//

import UIKit

protocol SearchLocationDelegate {
    func searchLocation(latValue:String, logValue:String)
}

class NextViewController: UIViewController {

    @IBOutlet weak var latLabel: UITextField!
    @IBOutlet weak var logLabel: UITextField!
    
    var delegate:SearchLocationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func SearchAction(_ sender: Any) {
//        入力された値を取得
        var lat = latLabel.text!
        var log = logLabel.text!
//        両方のTFが空でなければ戻る
//        if latLabel.text!.isEmpty && logLabel.text!.isEmpty {
        
        if latLabel.text! != nil && logLabel.text! != nil  {
//          デリゲートメソッドの引数に入れる
            delegate?.searchLocation(latValue: lat, logValue: log)
            dismiss(animated: true, completion: nil)
        }
    }
    
    
}
