//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by 岡崎流依 on 2021/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countLabel.text = "0"
        
        
        
    }
    
    @IBAction func puls(_ sender: Any) {
        count = count + 1
        countLabel.text = String(count)
        
        if count >= 10 {
            changeTextColor()
        } else {
            resetColor()
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        count -= 1
        countLabel.text = String(count)
        
        if count >= 10 {
            changeTextColor()
        } else {
            resetColor()
        }
        
    }
    
    func changeTextColor(){
        countLabel.textColor = .yellow
    }
 
    func resetColor(){
        countLabel.textColor = UIColor.white
    }
    
    
    
    
}

