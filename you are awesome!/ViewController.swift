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
    
    var index = 0
    
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["you are awesome",
                        "you are great",
                        "you are fantastic",
                        "when the genius bar needs help, they call you!",
                        "you brighten my day",
                        "you make me smile",
                        "I cant wait to download your app!"]
        messageLabel.text = messages[index]
        
        
        if index == messages.count - 1 {
            index = 0
        } else {
            index = index + 1
        }
        
        {}
        
//        let message1 = "you are awesome"
//        let message2 = "you are great"
//        let message3 = "you are amazing"
//        
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }
        
    }

}

