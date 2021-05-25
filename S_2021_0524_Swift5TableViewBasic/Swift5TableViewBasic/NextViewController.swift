//
//  NextViewController.swift
//  Swift5TableViewBasic
//
//  Created by 岡崎流依 on 2021/05/24.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var todoLabel: UILabel!
    
    var toDoString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todoLabel.text = toDoString
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    

    /*
     MARK: - Navigation

     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         Get the new view controller using segue.destination.
         Pass the selected object to the new view controller.
    }
    */

}
