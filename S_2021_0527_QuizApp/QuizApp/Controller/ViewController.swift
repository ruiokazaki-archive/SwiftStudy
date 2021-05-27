//
//  ViewController.swift
//  QuizApp
//
//  Created by 岡崎流依 on 2021/05/27.
//

import UIKit

class ViewController: UIViewController,NowScoreDelegate {
    
    var changeColor = ChangeColor()
    
    let imagesList = ImagesList()
    var pickAns = false
    
    var correctCount = 0
    var wrongCount = 0
    var maxScore = 0
    var questionNumber = 0
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var maxScoreLabel: UILabel!
    
//    var widhOutMP3 = WidhOutMP3()
    var soundFile = SoundFile()
    
    var gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientLayer = changeColor.changeColor(TRed: 0.06, TGreen: 0.31, TBlue: 0.15, TAlpha: 1, BRed: 0.85, BGreen: 0.31, BBlue: 0.96, BAlpha: 1)
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        imageView.layer.cornerRadius = 20
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        correctCount = 0
        wrongCount = 0
        questionNumber = 0
        
        imageView.image = UIImage(named: imagesList.list[0].imageText!)
        
        if UserDefaults.standard.object(forKey: "maxCorrect") != nil {
            maxScore = UserDefaults.standard.object(forKey: "maxCorrect") as! Int
        }
        
        maxScoreLabel.text = String(maxScore)
    }

    @IBAction func ans(_ sender: Any) {
        if (sender as AnyObject).tag == 1 {
            soundFile.playSound(fileName: "maruSound", extensionName: "mp3")
            pickAns = true
        } else {
            soundFile.playSound(fileName: "batsuSound", extensionName: "mp3")
            pickAns = false
        }
        check(ans: pickAns)
        nextQuestion()
        
    }
    
    func check(ans:Bool){
        if ans == imagesList.list[questionNumber].ans {
            print("seikai")
            correctCount += 1
        } else {
            print("matigai")
            wrongCount += 1
        }
    }
    
    func nextQuestion(){
        if questionNumber <= 9 {
            questionNumber += 1
            imageView.image = UIImage(named: imagesList.list[questionNumber].imageText!)
        } else {
            print("問題が終了")
            performSegue(withIdentifier: "next", sender: nil)
        }
    }
    
    
    func NowScore(nowScore: Int) {
        soundFile.playSound(fileName: "sound", extensionName: "mp3")
        maxScoreLabel.text = String(nowScore)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next" {
            let NextVC = segue.destination as! NextViewController
            NextVC.correctCount = correctCount
            NextVC.wrongCount = wrongCount
            NextVC.delegate = self
        }
    }
    
}

