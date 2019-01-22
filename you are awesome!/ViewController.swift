//
//  ViewController.swift
//  you are awesome!
//
//  Created by Kyle Burns on 1/14/19.
//  Copyright © 2019 t. kyle burns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        let message1 = "you are awesome"
        let message2 = "you are great"
        let message3 = "you are amazing"
        
        if messageLabel.text == message1 {
            messageLabel.text = message2
        } else if messageLabel.text == message2 {
            messageLabel.text = message3
        } else {
            messageLabel.text = message1
        }
    }

}

