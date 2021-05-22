//
//  ViewController.swift
//  Swift5Keyboard1
//
//  Created by 岡崎流依 on 2021/05/22.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
//    UITextFieldDelegateは
//    TextFieldが持っているDelegateメソッドを呼ぶことができるようになる

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
//        self で自分のクラスに設定した
        passWordTextField.delegate = self
        
    }

    @IBAction func login(_ sender: Any) {
        
        logoImageView.image = UIImage(named: "loginOK")
        
        userNameLabel.text = userNameTextField.text
        passwordLabel.text = passWordTextField.text
        
//        デリゲートとプロトコル
//        他のクラスで定義されたメソッドなどを自分のクラスで簡単に使用することができる。
        
    }
    
//    タッチでキーボードを閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
//        編集を終了しても良いですか？
        view.endEditing(true)
        
    }
    
    //    return を押したらキーボードを閉じる
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            
    //        キーボードが閉じるよ
            textField.resignFirstResponder()
            
            return true
        }
    
    
}

