//
//  Next1ViewController.swift
//  practice
//
//  Created by 岡崎流依 on 2021/05/29.
//

import UIKit

class Next1ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = String(count)
        
        
    }
    

    @IBAction func Back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
