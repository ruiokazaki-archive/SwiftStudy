//
//  ViewController.swift
//  Swift5TableViewBasic
//
//  Created by 岡崎流依 on 2021/05/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,UITextFieldDelegate{
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var textArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        textField.delegate = self
    }

    
//    ** 1
    func numberOfSections(in tableView: UITableView) -> Int {
//    ** 3 が何回よばれるかを返す
        return textArray.count
    }

//    ** 2
//    tableが構築される時sectionの数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
//    ** 3
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.selectionStyle = .none
        cell.textLabel?.text = textArray[indexPath.row]
//        対象のcellが何番目かがindexPathに入っている
        cell.imageView?.image = UIImage(named: "checkImage")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableのcellをタップしたらcellの中身を渡す
        
        let nextVC = storyboard?.instantiateViewController(identifier: "next") as! NextViewController
        
        nextVC.toDoString = textArray[indexPath.row]
        
        navigationController?.pushViewController(nextVC, animated: true)
        
        
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return view.frame.size.height / 6
    }
 
//    retyrn が押された時に
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        
        textArray.append(textField.text!)
        textField.resignFirstResponder()
//        キーボードを閉じる
        textField.text = ""
        tableView.reloadData()
//        参照するデータを更新する
//        tableをリロードする
        return true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
}













