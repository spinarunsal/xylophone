//
//  ViewController.swift
//  Xylophone
//
//  Created by S. Pinar Unsal on 2/12/2018.
//  Editted on 3/15/2018
//  Copyright © 2018 All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    // Grab the path, make sure to add it to your project!
    var audioPlayer : AVAudioPlayer!
    var selectedSoundFileName: String = ""
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        selectedSoundFileName = soundArray[sender.tag-1]
        print(selectedSoundFileName)
        playSound()
        
    }
    
    func playSound() {
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }
}
