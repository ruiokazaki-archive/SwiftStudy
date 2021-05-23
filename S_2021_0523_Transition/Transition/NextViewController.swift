//
//  NextViewController.swift
//  Transition
//
//  Created by 岡崎流依 on 2021/05/23.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var label2: UILabel!
    
    var count2  = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label2.text = String(count2)

    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
