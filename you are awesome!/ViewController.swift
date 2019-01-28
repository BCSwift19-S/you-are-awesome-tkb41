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
    @IBOutlet weak var soundSwitch: UISwitch!
    
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
    
    func nonReapeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        repeat {
            newIndex = Int.random(in: 0 ..< maxValue )
        } while lastNumber == newIndex
        return newIndex
    }

        func playSound(soundName: String, audioPlayer: inout AVAudioPlayer ) {
        //can we load in a file with soundName
        if let sound = NSDataAsset(name: soundName) {
            // check if sound.data is a sound file
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
                
            } catch {
                // if sound.data is nota valid audio file
                print("ERROR: \(soundName) could not be played as a sound." )
            }
        } else {
            // if reading the NSdataAssset doesnt work tell the developer
           print("ERROR: file \(soundName) didnt load")
        }
    }
    
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if soundSwitch.isOn == false && soundIndex != -1 {
            awesomePlayer.stop()
        }
    }
  
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages = ["you are awesome",
                        "you are great",
                        "you are fantastic",
                        "when the genius bar needs help, they call you!",
                        "you brighten my day",
                        "you make me smile",
                        "I cant wait to download your app!"]
        
        //Showing messages code
        index = nonReapeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //show an image
        imageIndex = nonReapeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "image\(imageIndex)")
        
        //get a random number to yse in our soundName file
        soundIndex = nonReapeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
        
        //            play sound
        let soundName = "sound\(soundIndex)"
        
        //            if soundSwitch.isOn == true {
        if soundSwitch.isOn {
            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
            
        }
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
        

