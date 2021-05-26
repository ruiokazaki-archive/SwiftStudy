//
//  NextViewController.swift
//  Swift6Struct
//
//  Created by 岡崎流依 on 2021/05/26.
//

import UIKit

protocol SetOKDelegate {
    func setOK(check:Person)
}

class NextViewController: UIViewController {
    
    var person = Person()
    
    var setOKDelegate:SetOKDelegate!

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userHobby: UITextField!
    @IBOutlet weak var userMusic: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addButton(_ sender: Any) {
        
        person.name = userName.text!
        person.hobby = userHobby.text!
        person.music = userMusic.text!
        setOKDelegate.setOK(check: person)
        dismiss(animated: true, completion: nil)
    }
    
}
