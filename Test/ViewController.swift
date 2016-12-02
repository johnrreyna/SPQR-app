//
//  ViewController.swift
//  Test
//
//  Created by John Reyna on 11/18/16.
//  Copyright © 2016 John Reyna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        billTextField.text = "0.00"
        // Do any additional setup after loading the view, typically from a nib.
        //balls
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

