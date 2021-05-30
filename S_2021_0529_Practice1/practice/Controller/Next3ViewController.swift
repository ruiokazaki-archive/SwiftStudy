//
//  Next3ViewController.swift
//  practice
//
//  Created by 岡崎流依 on 2021/05/30.
//

import UIKit

class Next3ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textfield: UITextField!
    
    var todoArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.isNavigationBarHidden = true
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let label = cell.contentView.viewWithTag(1) as! UILabel
        label.text = todoArray[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoArray.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    

    @IBAction func add(_ sender: Any) {
        if textfield.text?.isEmpty == true {
            return
        }
        
        todoArray.append(textfield.text!)
        textfield.text = ""
        tableView.reloadData()
    }
    
//    @IBAction func next4(_ sender: Any) {
//        self.performSegue(withIdentifier: "next3", sender: nil)
//    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "next3" {
//            let Next4VC = segue.destination as! Next4ViewController
//            Next4VC.addTodoDelegate = self
//        }
//    }
    
//    func addTodo(todo: String) {
//        todoArray.append(todo)
//    }
    
}
