//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPresed(_ sender: UIButton) {
        sender.alpha = 0.5;
        playSound(str : sender.currentTitle!)
        sleep(UInt32(0.2))
        sender.alpha = 1;
            }
    
    func playSound(str : String) {
        let url = Bundle.main.url(forResource:str, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


