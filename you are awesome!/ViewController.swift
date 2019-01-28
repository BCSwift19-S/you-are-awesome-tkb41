//
//  ViewController.swift
//  you are awesome!
//
//  Created by Kyle Burns on 1/14/19.
//  Copyright © 2019 t. kyle burns. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImage: UIImageView!
    
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 4
    
   
    
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
        
//        var newIndex = -1
        var newIndex: Int //declares but doesnt initialize newIndex
        var newImageIndex: Int
        var newSoundIndex = -1
        
        
        
        //Showing messages code
        repeat {
            newIndex = Int.random(in: 0 ..< messages.count )
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        //showing images code
        
        repeat {
            newImageIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newImageIndex
        
        imageIndex = newImageIndex
        
        awesomeImage.image = UIImage(named: "image\(newImageIndex)")
        
        //get a random number to yse in our soundName file
        
        repeat {
            newSoundIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newSoundIndex
        
        soundIndex = newSoundIndex
        

        
        var soundName = "sound\(soundIndex)"
        
        //can we load in a file with soundName
           if let sound = NSDataAsset(name: soundName) {
            // check if sound.data is a sound file
            do {
           try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
                
        } catch {
            // if sound.data is nota valid audio file
            print("ERROR: \(soundName) could not be played as a sound." )
          
            }
        } else {
            // if reading the NSdataAssset doesnt work tell the developer
            print("ERROR: file \(soundName) didnt load")
            
            
        }
        
        
        
        
        
        
//        messageLabel.text = messages.randomElement()!
        
        
        
        
        
        
//        messageLabel.text = messages[index]
//
//
//        if index == messages.count - 1 {
//            index = 0
//        } else {
//            index = index + 1
        }
    
        
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



