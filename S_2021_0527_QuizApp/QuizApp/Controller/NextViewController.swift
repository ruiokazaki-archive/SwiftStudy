//
//  NextViewController.swift
//  QuizApp
//
//  Created by 岡崎流依 on 2021/05/27.
//

import UIKit

protocol NowScoreDelegate {
    func NowScore(nowScore:Int)
}

class NextViewController: UIViewController {

    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var wrongLabel: UILabel!
    
    var correctCount = Int()
    var wrongCount = Int()
    
    var maxCorrect:Int = 0
    
    var delegate:NowScoreDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctLabel.text = String(correctCount)
        wrongLabel.text = String(wrongCount)
        
        if UserDefaults.standard.object(forKey: "maxCorrect") != nil {
            maxCorrect = UserDefaults.standard.object(forKey: "maxCorrect") as! Int
        }
    }
    
    @IBAction func back(_ sender: Any) {
        if maxCorrect < correctCount {
            UserDefaults.standard.set(correctCount, forKey: "maxCorrect")
            delegate?.NowScore(nowScore: correctCount)
        } else {
            UserDefaults.standard.set(maxCorrect, forKey: "maxCorrect")
        }
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
