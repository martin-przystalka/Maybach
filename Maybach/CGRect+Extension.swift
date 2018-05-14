//
//  CGRect+Extension.swift
//  Maybach
//
//  Created by Martin Przystalka on 05/12/2017.
//  Copyright © 2017 mh. All rights reserved.
//

import UIKit

///Extensions for CGRect class.
public extension CGRect {
    
    ///Return the `midX` and `midY` in `CGPoint`.
    public var center: CGPoint {
        return CGPoint(x: midX, y: midY)
    }
}
