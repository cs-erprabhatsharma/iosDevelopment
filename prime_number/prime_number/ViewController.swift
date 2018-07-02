//
//  ViewController.swift
//  prime_number
//
//  Created by Everyone on 6/29/18.
//  Copyright © 2018 Everyone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberInputOutlet: UITextField!
    @IBOutlet weak var answerOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func checkAction(_ sender: Any) {
        
        if let value : String = numberInputOutlet.text {
            if(value.characters.count != 0){
                var no : Int = 0 ;
                var count : Int = 0 ;
                no  = Int(value)!
                for var i in 2..<no {
                    
                    if (no % i == 0 ){
                        
                        count+=1
                    }
                    
                    i+=1
                    
                }
                if( count == 0 ) {
                    self.answerOutlet.text = "Prime Number"
                }
                else {
                    self.answerOutlet.text = "Not A Prime Number"
                    
                }
                
                
                
            }
        }
        
        
    }
}

