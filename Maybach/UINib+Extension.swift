//
//  UINib+Extension.swift
//  Maybach
//
//  Created by Martin Przystalka on 22/09/2017.
//  Copyright © 2017 mh. All rights reserved.
//

import UIKit

///Extension for UINib class.
public extension UINib {
    
    /**
     Instantiating view from xib. Takes type in parameter which is returning later.
     Return nil if there is no match to instantiate.
     */
    public class func get<T>(_ objectType: T.Type) -> T? {
        guard let type = objectType as? AnyClass else { return nil }
        let bundle = Bundle(for: type.self)
        let nibName = String(describing: objectType)
        let nib = UINib(nibName: nibName, bundle: bundle).instantiate(withOwner: nil, options: nil).first as? T
        return nib
    }
}
