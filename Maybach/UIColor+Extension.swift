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
    public func lighter(by percentage: CGFloat = 0.3) -> UIColor {
        return self.goLighter(by: abs(percentage))
    }
    
    ///Changing the color by making it more darker and returns it. Optional parameter, representing by percentage.
    public func darker(by percentage: CGFloat = 0.3) -> UIColor {
        return self.goDarker(by: -abs(percentage))
    }
    
    private func goDarker(by factor: CGFloat) -> UIColor {
        var hue: CGFloat = 0
        var saturation: CGFloat = 0
        var brightness: CGFloat = 0
        var alpha: CGFloat = 0
        if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
            return UIColor(hue: hue, saturation: saturation, brightness: brightness * factor, alpha: alpha)
        } else {
            return self
        }
    }
    
    private func goLighter(by percentage: CGFloat) -> UIColor {
        var h: CGFloat = 0, s: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
        if self.getHue(&h, saturation: &s, brightness: &b, alpha: &a) {
            if b < 1.0 {
                let newB: CGFloat = max(min(b + percentage * b, 1.0), 0, 0)
                return UIColor(hue: h, saturation: s, brightness: newB, alpha: a)
            } else {
                let newS: CGFloat = min(max(s - percentage * s, 0.0), 1.0)
                return UIColor(hue: h, saturation: newS, brightness: b, alpha: a)
            }
        }
        return self
    }
}
