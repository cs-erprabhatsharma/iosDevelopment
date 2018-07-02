//
//  ViewController.swift
//  BinaryToDecimal
//
//  Created by Everyone on 7/2/18.
//  Copyright © 2018 Everyone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNumberOutlet: UITextField!
    @IBOutlet weak var answerOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var binary : Int = 0
    
    @IBAction func convertButtonAction(_ sender: Any) {
        
        if let value : String = enterNumberOutlet.text {
            let trimmedString = value.trimmingCharacters(in: .whitespaces)
            if (trimmedString.characters.count != 0){
                var temp : Int = 0
                var sum : Int = 0
                var i : Float = 0

                binary = Int(value)!
                while(binary > 0){
                    temp = binary % 10
                    sum = Int(Float(sum) + ( Float(temp) * pow (2.0 , i  )))
                    i+=1
                    binary/=10
                }
                answerOutlet.text = String(sum)
                
            }
        }
    }
    
}

