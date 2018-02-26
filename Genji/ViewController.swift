//
//  ViewController.swift
//  Genji
//
//  Created by Максим Коротков on 25.02.2018.
//  Copyright © 2018 Maxim Korotkov. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["arigato", "healing", "kakugo", "mada_mada", "sono_teido_ka", "to_know_yourself", "ultimate", "waga_kokoro"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Make the Status Bar Light/Dark Content for this View
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
        //return UIStatusBarStyle.default   // Make dark again
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let selectedSoundFileName : String = soundArray[sender.tag - 1]
        
        playSound(passedSound : selectedSoundFileName)
        
    }
    
    func playSound(passedSound : String) {
        
        let soundURL = Bundle.main.url(forResource: passedSound, withExtension: "mp3")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }
    

}

