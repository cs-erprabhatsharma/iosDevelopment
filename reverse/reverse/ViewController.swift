//
//  ViewController.swift
//  reverse
//
//  Created by Everyone on 6/30/18.
//  Copyright © 2018 Everyone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var no1Outlet: UITextField!
    @IBOutlet weak var answerOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reverseAction(_ sender: Any) {
        
        if let value : String = no1Outlet.text{
            if (value.characters.count != 0){
                var i : Int = Int(value)!
                var sum : Int = 0
                while (i > 0){
                    sum = ( sum * 10 ) + ( i % 10 )
                    i/=10
                    
                }
                answerOutlet.text = String(sum)
                
            }
        }
        
        
    }
    
    
}

