//
//  UILabel+Extension.swift
//  Maybach
//
//  Created by martin.przystalka on 17/12/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

import UIKit

///Extensions for UILabel class.
extension UILabel {
    
    /**
     Returns value which is estimated height for UILabel. Before using, you have to set all label
     properties like font, lines, word wrap mode.
     This function is creating copy of instance UILabel.
     */
    public func estimateHeigh(width: Int) -> CGFloat {
        let cloneLabel = copyLabel()
        cloneLabel.frame = CGRect(x: 0, y: 0, width: width, height: 0)
        cloneLabel.sizeToFit()
        return cloneLabel.frame.height
    }
    
    private func copyLabel() -> UILabel {
        let archivedData = NSKeyedArchiver.archivedData(withRootObject: self)
//        swiftlint:disable force_cast
        let copiedLabel = NSKeyedUnarchiver.unarchiveObject(with: archivedData) as! UILabel
        return copiedLabel
    }
}
