//
//  String+Extension.swift
//  Maybach
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

import Foundation

///Extensions for String class.
extension String {
    
    ///Trim the string in specified range. Takes in parameters two indexes.
    public func substring(from: Int, to: Int) -> String {
        let offset = to - from
        let beginIndex = index(startIndex, offsetBy: from)
        let endIndex = index(beginIndex, offsetBy: offset)
        
        let firstPart = self[...endIndex]
        let result = firstPart.self[beginIndex...]
        
        return String(result)
    }
    
    ///Check does current string can be casted to Int type.
    public var isNumber: Bool {
        let isNumber = Double(self) != nil
        return isNumber
    }

    /**
     Returns translation for given key. Search in main bundle for file Localizable.strings, print message if not found.
     If key is not found, then message is printed.
 */
    public var localize: String {
        let provider = LocalizeProvider()
        return provider.localize(self)
    }
}
