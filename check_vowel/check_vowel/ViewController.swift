//
//  ViewController.swift
//  check_vowel
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

    @IBAction func checkAction(_ sender: Any) {
        
        if let value : String = inputOutlet.text{
            if(value.characters.count == 1){
                let char : Character = Character(value)
                switch (char) {
                    
                case "a" :
                answerOutlet.text = "\(char) is vowel"
                    break
                case "e" :
                    answerOutlet.text = "\(char) is vowel"
                    break
                case "i" :
                    answerOutlet.text = "\(char) is vowel"
                    break
                case "o" :
                    answerOutlet.text = "\(char) is vowel"
                    break
                case "u" :
                    answerOutlet.text = "\(char) is vowel"
                    break
                case "A" :
                    answerOutlet.text = "\(char) is vowel"
                    break
                case "E" :
                    answerOutlet.text = "\(char) is vowel"
                    break
                case "I" :
                    answerOutlet.text = "\(char) is vowel"
                    break
                case "O" :
                    answerOutlet.text = "\(char) is vowel"
                    break
                case "U" :
                    answerOutlet.text = "\(char) is vowel"
                    break

                default:
                    answerOutlet.text = "\(char) is consonant"

                    
                }
                
            }
            else{
                
                answerOutlet.text = "Wrong Input"
            }
            
            
        }
        
        
    }
    
}

