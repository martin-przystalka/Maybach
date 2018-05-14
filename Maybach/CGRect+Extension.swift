//
//  CGRect+Extension.swift
//  Maybach
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

import UIKit

///Extensions for CGRect class.
public extension CGRect {
    
    ///Return the `midX` and `midY` in `CGPoint`.
    public var center: CGPoint {
        return CGPoint(x: midX, y: midY)
    }
}
