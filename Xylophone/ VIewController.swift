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
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound(soundFileName: String) {
        
        // Implementation with AVFoundation
        let soundUrl = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
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
        
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        playSound(soundFileName: soundArray[sender.tag - 1])
        
    }
    
  

}

