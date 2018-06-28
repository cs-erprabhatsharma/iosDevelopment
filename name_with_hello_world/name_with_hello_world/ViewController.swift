//
//  ViewController.swift
//  name_with_hello_world
//
//  Created by Everyone on 6/29/18.
//  Copyright © 2018 Everyone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    @IBOutlet weak var answerOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonAction(_ sender: Any) {
        
        self.answerOutlet.text = "Hello World " + nameOutlet.text!
    }
    
}

