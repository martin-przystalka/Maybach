//
//  String+Extension.swift
//  Maybach
//
//  Created by Martin Przystalka on 28/09/2017.
//  Copyright © 2017 mh. All rights reserved.
//

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
    public func isNumber() -> Bool {
        let isNumber = Int(self) != nil
        return isNumber
    }
}
