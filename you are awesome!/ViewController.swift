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
        print("the view loaded!")
        
        
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        if messageLabel.text == "you are awesome" {
            messageLabel.text = "you are great"
        } else if messageLabel.text == "you are great" {
            messageLabel.text = "you are amazing"
        } else {
            messageLabel.text = "you are awesome"
        }
    }

}

