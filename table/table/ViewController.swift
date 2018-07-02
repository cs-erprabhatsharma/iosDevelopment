//
//  ViewController.swift
//  table
//
//  Created by Everyone on 6/30/18.
//  Copyright © 2018 Everyone. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        if let value : String = enterNumberOutlet.text {
            if (value.characters.count != 0){
        cell.textLabel?.text = "\(enterNumberOutlet.text!) *  \(indexPath.row + 1)  =  \(Int((indexPath.row + 1)) * Int((enterNumberOutlet?.text)!)!  ) "
            }
        }
 
        return cell
    }
    

    @IBOutlet weak var enterNumberOutlet: UITextField!
    @IBOutlet weak var tableOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func findTabelAction(_ sender: Any){
        if let value : String = enterNumberOutlet.text {
            if (value.characters.count != 0){
               self.tableOutlet.reloadData()
            }
        }
        
    }
    
    
}
        
        
        

        

    
    
    
    
    


