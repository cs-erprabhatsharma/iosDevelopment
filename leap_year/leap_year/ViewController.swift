//
//  ViewController.swift
//  leap_year
//
//  Created by Everyone on 6/29/18.
//  Copyright © 2018 Everyone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOutlet: UITextField!
    @IBOutlet weak var resultOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func checkButtonAction(_ sender: Any) {
        if let value: String  = yearOutlet.text {
            if(value.characters.count != 0){
                var year : Int = 0 ;
                year  = Int(value)!
                if(year % 4 == 0 && year % 100 != 0 || year % 100 == 0 && year % 400 == 0)
                {
                    self.resultOutlet.text = "Leap year"


                }

                else{
               self.resultOutlet.text = " Not a Leap year"
            }
        }
        
        
    }
    
}

}
