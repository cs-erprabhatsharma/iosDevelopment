//
//  ViewController.swift
//  greatest_of_4_numbers
//
//  Created by Everyone on 6/30/18.
//  Copyright © 2018 Everyone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var no1Outlet: UITextField!
    @IBOutlet weak var no2Outlet: UITextField!
    @IBOutlet weak var no3Outlet: UITextField!
    @IBOutlet weak var no4Outlet: UITextField!
    @IBOutlet weak var answerOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func checkAnswerAction(_ sender: Any) {
        
        if let value1 : String = no1Outlet.text , let value2 : String = no2Outlet.text , let value3 : String = no3Outlet.text , let value4 : String = no4Outlet.text {
            if (value1.characters.count != 0 && value2.characters.count != 0 && value3.characters.count != 0 && value4.characters.count != 0 ){
                let val1 : Int = Int(value1)!
                let val2 : Int = Int(value2)!
                let val3 : Int = Int(value3)!
                let val4 : Int = Int(value4)!
                
                var big : Int = 0
                big = val1 > val2 ? val1: val2
                big = big > val3 ? big : val3
                big = big > val4 ? big : val4
                
                answerOutlet.text = String(big)

                

                
                
                
                
            }
        }
        
        
    }
    
}

