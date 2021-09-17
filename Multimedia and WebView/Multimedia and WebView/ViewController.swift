//
//  ViewController.swift
//  Multimedia and WebView
//
//  Created by Mac n Cheese on 10/06/21.
//

import UIKit
import AVKit //audio
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    var videoPlayer = AVPlayer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let source = Bundle.main.path(forResource: "musikk", ofType: "mp3")
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: source!))
        } catch  {
            let alert = UIAlertController(title: "Info", message: error.localizedDescription, preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
            
        }
        // Do any additional setup after loading the view.
    }

   
    @IBAction func btnPlay(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func btnPause(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.pause()
        }
    }
    @IBAction func btnStop(_ sender: Any) {
        if audioPlayer.isPlaying {
            audioPlayer.stop()
            audioPlayer.currentTime = 0
        }
    }
    
    @IBAction func btnMovie(_ sender: Any) {
        
        let source = Bundle.main.path(forResource: "androiddeveloper", ofType: "mp4")
        videoPlayer = AVPlayer(url: URL(fileURLWithPath: source!))
        
        let controller = AVPlayerViewController()
        controller.player = videoPlayer
        
        present(controller, animated: true) {
            controller.player?.play()
        }
        
    }
}

