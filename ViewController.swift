//
//  ViewController.swift
//  WWE Soundboard
//
//  Created by Apple Owner on 5/17/21.
//


import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
        
        playSound(soundName: sender.currentTitle!)
    }
    @IBAction func stopSound(_ sender: UIButton) {
        if player.isPlaying {
            player.stop()
        } else {
            player.play()
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
        
        
    }
    
}
