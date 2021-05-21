//
//  ViewController.swift
//  Swift5Timer1
//
//  Created by 岡崎流依 on 2021/05/21.
//

import UIKit

class ViewController: UIViewController {
//    親クラスをスーパークラスという。

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var stopBtn: UIButton!
//    :UIButton
//    UIButtonクラスという
//    変数名:クラス名
    
    var timer = Timer()
//    Timerというクラスをインスタンスしている
    var count = Int()

    var imageArray = [UIImage]()
    //    配列の作りかた
    //    var aiueoBox = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        count = 0
        
        stopBtn.isEnabled = false
//        isEnabled プロパティ
//        false にすると押せなくなる
        
        for i in 0..<5 {
            let image = UIImage(named:"\(i)")
//            UIImage(named:"アセットにある画像の名前")
//            名前を変数定数にするには \ バックスラッシュを入れる必要がある。
            imageArray.append(image!)
//            変数に ! をつけることでNullを許さないという意味
            //    配列の追加仕方
            //    aiueoBox.append("あ")
        }
//        for文の書き方
//        for i in 0..<10{}
//            iが0階目から9に達するまでループする
//            ..  が2つだと未満
//            ... が3つだと以下になる
//            0...<10 とすると
//            0から10含むので11回ループされる

        imageView.image = UIImage(named: "0")
//        最初から表示しておく画像を設定した。

        
        
    }
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    
    @objc func timerUpdate(){
        //    0.2秒ごとに呼ばれる
        //    #selector(コールバック関数)
        //    コールバック関数として使う場合は @objc func 関数名(){} で書く必要がある。
        count = count + 1
        if count == 5 {
            count = 0
        }
//        imageView.image = UIImage(named: "0")
        imageView.image = imageArray[count]
    }

    @IBAction func start(_ sender: Any) {
        startBtn.isEnabled = false
        stopBtn.isEnabled = true
        startTimer()
    }
    
    @IBAction func stop(_ sender: Any) {
        startBtn.isEnabled = true
        stopBtn.isEnabled = false
        timer.invalidate()
//        タイマーを止める処理をする。
    }
}
