//
//  ViewController.swift
//  swapping
//
//  Created by Everyone on 6/30/18.
//  Copyright © 2018 Everyone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var no1Outlet: UITextField!
    @IBOutlet weak var no2Outlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func swapAction(_ sender: Any) {
        if let value1 : String = no1Outlet.text , let value2 : String = no2Outlet.text{
            if (value1.characters.count != 0 && value2.characters.count != 0){
                var i : Int = Int ( value1)!
                var j : Int = Int ( value2)!
                i = i + j
                j = i - j
                i = i - j
                no1Outlet.text = String (i)
                no2Outlet.text = String (j)
            }
            
            
            
        }
    
    }
   
    
}

