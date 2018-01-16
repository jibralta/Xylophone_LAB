//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var xylophoneSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note1", ofType: "wav")!)
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        print(sender.tag)
        
//        if sender.tag == 1 {
//            print("red")
//        } else if sender.tag == 2 {
//            print("orange")
//        } else if sender.tag == 3 {
//            print("yellow")
//        }
//
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

