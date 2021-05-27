//
//  SoundFile.swift
//  QuizApp
//
//  Created by 岡崎流依 on 2021/05/27.
//

import Foundation
import AVFoundation

class SoundFile {
    var player:AVAudioPlayer?
    
    func playSound (fileName:String, extensionName:String) {
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: extensionName)
        
        do {
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
        } catch {
            print("エラーです。")
        }
    }
}

