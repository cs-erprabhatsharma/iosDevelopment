//
//  ViewController.swift
//  ascendoing&descen
//
//  Created by Everyone on 7/2/18.
//  Copyright © 2018 Everyone. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate, UITableViewDelegate , UITableViewDataSource {
    

    
    @IBOutlet weak var deascendingTabelOutlet: UITableView!

    @IBOutlet weak var ascendingTabelOutlet: UITableView!
    @IBOutlet weak var enterNumberOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.enterNumberOutlet.delegate = self

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.
    }
  
        @IBAction func tapview(_ sender: UITapGestureRecognizer) {
        
        self.view.endEditing(true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if ascendingTabelOutlet == tableView {

            return "Ascending"}
        else{
             return "Descending"
        }
            
            
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        
        if deascendingTabelOutlet == tableView {
        cell.textLabel?.text = "\(list1[indexPath.row ])"
        } else{
        cell.textLabel?.text = "\(list[indexPath.row ])"
        }
        return cell
    }

    
    var no : Int = 0
    var list : [Int] = []
    var list1 : [Int] = []

    func textFieldDidEndEditing(_ textField: UITextField) {
        if let value : String = enterNumberOutlet.text {
            let trimmedString = value.trimmingCharacters(in: .whitespaces)
            if (trimmedString.characters.count != 0){
                no = Int(trimmedString)!
                list.append(no)
                list.sort()
              //  print(list)
              list1 =  list.sorted(by: >)
//                print(list1)
                enterNumberOutlet.text = nil
                self.ascendingTabelOutlet.reloadData()
                self.deascendingTabelOutlet.reloadData()

            }
            
            
            
        }
        
        
    }
}

