//
//  ViewController.swift
//  Swift6BasicApp1
//
//  Created by 岡崎流依 on 2021/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var tapLabel: UILabel!
    
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tapLabel.text = "6でも10でもありません"
        
        let dic1 = ["生まれた年": 2002, "生まれた日": 6]
        print(dic1["生まれた年"])
        print(dic1["生まれた年"]!)
        
        for result in dic1 {
            print(result)
            print(result.key)
            print(result.value)
        }
    }

    @IBAction func tap(_ sender: Any) {
        count += 1
        countLabel.text = String(count)
        
        if count >= 10{
            imageView.image = UIImage(named: "back3")
        }else if count >= 5{
            imageView.image = UIImage(named: "back2")
        }else{
            imageView.image = UIImage(named: "back1")
        }
        
        switch count {
        case 6:
            tapLabel.text = "6です"
            break
        case 10:
            tapLabel.text = "10です"
            break
        default:
            tapLabel.text = "6でも10でもありません"
        }
        
    }
    
}

