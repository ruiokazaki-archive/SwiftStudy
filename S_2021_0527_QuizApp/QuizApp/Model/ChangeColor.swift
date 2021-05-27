//
//  ChangeColor.swift
//  QuizApp
//
//  Created by 岡崎流依 on 2021/05/27.
//

import Foundation
import UIKit


class ChangeColor {
    func changeColor(TRed:CGFloat, TGreen:CGFloat, TBlue:CGFloat, TAlpha:CGFloat, BRed:CGFloat, BGreen:CGFloat, BBlue:CGFloat, BAlpha:CGFloat) -> CAGradientLayer {
        let TColor = UIColor(red: TRed, green: TGreen, blue: TBlue, alpha: TAlpha)
        let BColor = UIColor(red: BRed, green: BGreen, blue: BBlue, alpha: BAlpha)
        
        let gradientColor = [TColor.cgColor, BColor.cgColor]
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = gradientColor
        
        return gradientLayer
    }
}
