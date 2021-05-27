//
//  Human.swift
//  QuizApp
//
//  Created by 岡崎流依 on 2021/05/27.
//

import Foundation

class Human: Animal {
    
    override func bress() {
        super.bress()
        print("私、息してます。")
        profile()
    }
    
    func profile() {
        print("watashiha okazaki rui desu!")
    }
    
}
