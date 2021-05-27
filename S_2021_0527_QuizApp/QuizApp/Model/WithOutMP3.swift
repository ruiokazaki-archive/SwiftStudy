//
//  WithOutMP3.swift
//  QuizApp
//
//  Created by 岡崎流依 on 2021/05/27.
//

import Foundation

class WidhOutMP3: SoundFile {
    override func playSound(fileName: String, extensionName: String) {
        if extensionName == "mp3" {
            print("このファイルは再生できません")
        }
        player?.stop()
    }
}
