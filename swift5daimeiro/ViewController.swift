//
//  ViewController.swift
//  swift5daimeiro
//
//  Created by Naoya Miyamoto on 2020/09/19.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    let musicPath = Bundle.main.bundleURL.appendingPathComponent("bgm.mp3")
    var musicPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

        @IBAction func start(_ sender: Any) {


        do {
            musicPlayer = try AVAudioPlayer(contentsOf: musicPath)
            
            musicPlayer.numberOfLoops = -1
        } catch {
            print("エラー")
        }
    
    

}
}
