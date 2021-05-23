//
//  ViewController.swift
//  Swift6WKWebView1
//
//  Created by 岡崎流依 on 2021/05/23.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    var webView = WKWebView()
    
    @IBOutlet weak var toolBar: UIToolbar!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        indicator.isHidden = true
        
//        webViewの大きさを決める
        webView.frame = CGRect(x:0, y:44 ,width:view.frame.size.width
                               , height:view.frame.size.height - toolBar.frame.size.height - 44)
        view.addSubview(webView)
        
        webView.navigationDelegate = self
        
//        URLをLoad
        let url = URL(string: "https://www.google.com/")
//        URL型にキャストしている
        let request = URLRequest(url: url!)
        
        webView.load(request)
        
        indicator.layer.zPosition = 2
        
    }

    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
//        読み込みが開始された時に呼ばれるデリゲーどメソッド
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//        ロードが完了した時に呼ばれるデリゲードメソッド
        indicator.isHidden = true
        indicator.stopAnimating()
    }

    @IBAction func back(_ sender: Any) {
        webView.goBack()
    }
    
    @IBAction func go(_ sender: Any) {
        webView.goForward()
    }
}

