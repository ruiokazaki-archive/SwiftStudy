//
//  NextViewController.swift
//  Swift6Button1
//
//  Created by 岡崎流依 on 2021/05/21.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        count = 5
        print(count)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeTitle(_ sender: Any) {
        titleLabel.text = "Twitter Logo"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
//        titleLabel.isEnabled = false
        
//        reasen: → エラーの内容
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
