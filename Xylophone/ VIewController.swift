//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
//import AudioToolbox

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func notePressed(_ sender: UIButton) {

        // Implementation with AVFoundation
        let soundUrl = Bundle.main.url(forResource: "note1", withExtension: "wav")

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
        
        // Implementation with AudioToolbox
//        if let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav") {
//            var mySound: SystemSoundID = 0
//            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
//            // Play
//            AudioServicesPlaySystemSound(mySound)
//        }
        
        
        
        let sender = sender.tag
        
        switch sender {
        case 1:
            print("red")
        case 2:
            print("orange")
        case 3:
            print("yellow")
        case 4:
            print("green")
        case 5:
                print("green blue")
        case 6:
            print("blue")
        case 7 :
            print("purple")
        default:
            print("Error")
        }
    }
    
  

}

