//
//  ViewController.swift
//  Swift6TableView1
//
//  Created by 岡崎流依 on 2021/05/25.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var textArray = [String]()
    var imageArray = ["1","2","3","4","5"]

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        let label = cell.contentView.viewWithTag(2) as! UILabel
        
        label.text = textArray[indexPath.row]
        imageView.image = UIImage(named: imageArray[indexPath.row])
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArray.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 467
    }

    @IBAction func tap(_ sender: Any) {
        
        if textField.text?.isEmpty == true {
            return
        }
        
        textArray.append(textField.text!)
        textField.text = ""
        if textArray.count <= 5{
            tableView.reloadData()
        }
        
    }
    
}

