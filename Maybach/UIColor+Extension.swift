//
//  UIColor+Extension.swift
//  Maybach
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

import UIKit

///Extensions for UIColor class.
extension UIColor {
    
    ///Initialiser color from hex representable.
    public convenience init(hex: String) {
        var uppercasedString = hex.uppercased()
        if uppercasedString.first == "#" {
            uppercasedString.remove(at: hex.startIndex)
        }
        var rgbValue: UInt32 = 0
        Scanner(string: uppercasedString).scanHexInt32(&rgbValue)
        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgbValue & 0x0000FF) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
    
    ///Changing the color by making it more lighter and returns it. Optional parameter, representing by percentage.
    public func lighter(by percentage: CGFloat = 0.1) -> UIColor {
        return self.changeWarmth(abs(percentage * 100))
    }
    
    ///Changing the color by making it more darker and returns it. Optional parameter, representing by percentage.
    public func darker(by percentage: CGFloat = 0.1) -> UIColor {
        return self.changeWarmth(-abs(percentage * 100))
    }
    
    private func changeWarmth(_ percentage: CGFloat) -> UIColor {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        let isPositive = getRed(&r, green: &g, blue: &b, alpha: &a)
        
        if isPositive {
            return UIColor(red: min(r + percentage / 100, 1.0),
                           green: min(g + percentage / 100, 1.0),
                           blue: min(b + percentage / 100, 1.0),
                           alpha: a)
        } else {
            return self
        }
    }
    
}
