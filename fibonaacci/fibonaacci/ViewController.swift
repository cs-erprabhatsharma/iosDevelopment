//
//  ViewController.swift
//  fibonaacci
//
//  Created by Everyone on 6/30/18.
//  Copyright © 2018 Everyone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOutlet: UITextField!
    @IBOutlet weak var answerOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func submitAction(_ sender: Any) {
      
        if let value : String = inputOutlet.text {
            if (value.characters.count != 0 ){
                var no : Int = Int (value)!
                answerOutlet.text = nil
                var no1 : Int = 0
                var no2 : Int = 1
                if (no > 1 || no == 1){
                    answerOutlet.text = String(no1)
                }
                if (no > 2 || no == 2){
                    
                    answerOutlet.text = answerOutlet.text! + " " + String(no2)
            }
                if (no > 2) {
                    var no3 : Int = 0

                    while (no != 2){
                       no3 = no1 + no2
                        no1 = no2
                        no2 = no3
                        no-=1
                        answerOutlet.text = answerOutlet.text! + " " + String(no3)
                        }
                }

            }
            }
        
        
    }
}

