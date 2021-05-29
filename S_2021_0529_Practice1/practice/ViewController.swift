//
//  ViewController.swift
//  practice
//
//  Created by 岡崎流依 on 2021/05/29.
//

import UIKit

class ViewController: UIViewController, CountReturn {
    

    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    var count:Int = 0
    
    @IBAction func plusAndMinus(_ sender: Any) {
        let senderTag = sender as! UIButton
        if senderTag.tag == 1 {
            count += 1
//            print(count)
        } else if senderTag.tag == 2 {
            count -= 1
        } else {
            print("ERR - ViewContller 26")
        }
        countLabel.text = String(count)
//        print(countLabel.text)
    }
    
    
    @IBAction func next1(_ sender: Any) {
        self.performSegue(withIdentifier: "next1", sender: nil)
    }
    
    @IBAction func next2(_ sender: Any) {
        self.performSegue(withIdentifier: "next2", sender: nil)
    }
    func returnCount(count: Int) {
        self.count = count
        countLabel.text = String(self.count)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next1" {
            let Next1VC = segue.destination as! Next1ViewController
            Next1VC.count = count
        } else if segue.identifier == "next2" {
            let Next2VC = segue.destination as! Next2ViewController
            Next2VC.delegate = self
            Next2VC.count = count
        }
    }
}

