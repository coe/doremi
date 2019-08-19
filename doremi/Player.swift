//
//  Player.swift
//  doremi
//
//  Created by COFFEE on 2019/08/16.
//  Copyright © 2019 COFFEE. All rights reserved.
//

import UIKit
import AVFoundation

class Player: NSObject {
    private var player:AVAudioPlayer!
    
    @IBInspectable var path:String!
    
    override func awakeFromNib() {
        player = try! AVAudioPlayer(contentsOf: Bundle.main.url(forResource: path, withExtension: nil)!)
    }
    
    @IBAction func start(_ sender: Any) {
        player.play()
    }
    
    @IBAction func stop(_ sender: Any) {
        player.stop()
        player.currentTime = 0
    }
}
