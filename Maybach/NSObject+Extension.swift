//
//  NSObject+Extension.swift
//  Maybach
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

import UIKit

///Extension for NSObject class.
extension NSObject {
    
    ///Return String description of current type.
    public static var name: String {
        return String(describing: self)
    }
}
