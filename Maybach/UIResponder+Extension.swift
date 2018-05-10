//
//  UIResponder+Extension.swift
//  Maybach
//
//  Created by Martin Przystalka on 22/09/2017.
//  Copyright © 2017 mh. All rights reserved.
//

import UIKit

///Extension for UIResponder class.
extension UIResponder {
    
    ///Return String description of current type.
    public static var name: String {
        return String(describing: self)
    }
}
