//
//  PlayerViewController.swift
//  Bekarys_Magauiya_MVVM
//
//  Created by Bekarys Magauiya on 06.05.2022.
//

import UIKit
import AVFoundation
class PlayerViewController: UIViewController {
    var player: AVAudioPlayer!
    
    var music : Music?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func buttonpress(_ sender: UIButton) {
        playmusic(music: music?.title!)
    }
    
    
    public func playmusic(music:String){
        
        let url = Bundle.main.url(forResource: music, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
    public func pause(music:String){
        player.pause()

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
