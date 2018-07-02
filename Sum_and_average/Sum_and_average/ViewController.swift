//
//  ViewController.swift
//  Sum_and_average
//
//  Created by Everyone on 7/2/18.
//  Copyright © 2018 Everyone. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate , UITextFieldDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
     
                cell.textLabel?.text = "\(list[indexPath.row ])"
    
        return cell
        }
        
    
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    var list : [Int] = []
    var no : Int = 0

    @IBOutlet weak var enterNumberOutlet: UITextField!
   
    @IBOutlet weak var sumOutlet: UILabel!
   
    @IBOutlet weak var averageOutlet: UILabel!
    @IBOutlet weak var tableViewOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.enterNumberOutlet.delegate = self

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    @IBAction func buttonAction(_ sender: Any) {
        
    }
    @IBAction func resetAction(_ sender: Any) {
     
        list.removeAll()
        sumOutlet.text = "sum"
        
    averageOutlet.text = "average"
        enterNumberOutlet.text = nil
        self.tableViewOutlet.reloadData()

    }
    func textFieldDidEndEditing(_ textField: UITextField) {
    
        if let value : String = enterNumberOutlet.text {
            let trimmedString = value.trimmingCharacters(in: .whitespaces)
            if (trimmedString.characters.count != 0){
                no = Int(trimmedString)!
                list.append(no)
                
                var sum : Int = 0
                for var i in 0..<list.count {
                    sum = sum + list[i]
                    i+=1
                }
                
                var average: Float = 0
                average = Float(sum) /  Float( list.count )
                
                sumOutlet.text = String(sum)
                
                averageOutlet.text = String(average)
                
                self.tableViewOutlet.reloadData()
                enterNumberOutlet.text = nil
                
            }
            
            
        }
}
    

    
  
}

