//
//  ViewController.swift
//  Transition
//
//  Created by 岡崎流依 on 2021/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func plus(_ sender: Any) {
        count += 1
        
        label.text = String(count)
        
        if count == 10 {
            
//            count = 0
            
//            performSegue(withIdentifier: "next", sender: nil)
            
            let nextVC = storyboard?.instantiateViewController(identifier: "next") as! NextViewController
            
            nextVC.count2 = count
            
            navigationController?.pushViewController(nextVC, animated: true)
            
            count = 0
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        override は勝手に呼ばれるメソッド
//        これは画面遷移するときに勝手に呼ばれるメソッド
        let nextVC = segue.destination as! NextViewController
        
        print(count)
        
        nextVC.count2 = count
        
    }
    
}

