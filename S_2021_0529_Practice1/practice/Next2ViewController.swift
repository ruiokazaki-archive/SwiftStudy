//
//  Next2ViewController.swift
//  practice
//
//  Created by 岡崎流依 on 2021/05/29.
//

import UIKit

protocol CountReturn {
    func returnCount(count:Int)
}

class Next2ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    var count = Int()
    var delegate: CountReturn?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = String(count)

    }
    
    @IBAction func plusAndMinus(_ sender: Any) {
        let senderTag = sender as! UIButton
        if senderTag.tag == 1 {
            count += 1
        } else if senderTag.tag == 2 {
            count -= 1
        }
        countLabel.text = String(count)
    }
    
    @IBAction func back(_ sender: Any) {
        delegate?.returnCount(count: count)
        dismiss(animated: true, completion: nil)

    }
    
    


}
