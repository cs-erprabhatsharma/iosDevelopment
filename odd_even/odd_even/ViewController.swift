//
//  ViewController.swift
//  odd_even
//
//  Created by Everyone on 7/1/18.
//  Copyright © 2018 Everyone. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource , UITableViewDelegate{
    
    
    @IBOutlet weak var enterNumberOutlet: UITextField!
    @IBOutlet weak var oddTableOutlet: UITableView!
    
    var no : Int = 0
    var odd : [Int] = []
    var even : [Int] = []
    var count : Int = 0

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return odd.count
        }
        if(section == 1){
            return even.count
            
        }
        return 0
    }
 
         func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            if(section == 0){
                
                return "odd"
                
                
            }
            if(section == 1){
                return "even"
        
            }
            return ""
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "LabelCell1", for: indexPath)

        if(indexPath.section == 0){
            cell1.textLabel?.text = "\(odd[indexPath.row ])"

        }
        if(indexPath.section == 1){
            cell1.textLabel?.text = "\(even[indexPath.row ])"

        }

        return cell1

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addButtonAction(_ sender: Any) {
        if let value : String = enterNumberOutlet.text {
            let trimmedString = value.trimmingCharacters(in: .whitespaces)
            if (trimmedString.characters.count != 0){
                no = Int(trimmedString)!
                if( no % 2 == 0 ){
                    
                 even.append(no)
                    print (even)
                }
                else{
                    odd.append(no)
                    print (odd)

                }
                count+=1
            }
            self.oddTableOutlet.reloadData()
            enterNumberOutlet.text = nil
        }
        
        
    }
    
 
}

