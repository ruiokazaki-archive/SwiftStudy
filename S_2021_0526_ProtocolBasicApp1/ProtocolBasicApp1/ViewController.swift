//
//  ViewController.swift
//  ProtocolBasicApp1
//
//  Created by 岡崎流依 on 2021/05/26.
//

import UIKit

class ViewController: UIViewController,CatchProtocol {
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count1 = Int()
    var count2:Int = 0
    var count3 = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func catchData(count: Int) {
        count1 = count
        countLabel.text = String(count)
    }

    @IBAction func next(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let NextVC = segue.destination as! NextViewController
        NextVC.aiueoBox = self
        NextVC.count = count1
    }
}

