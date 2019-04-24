//
//  LocalizeProvider.swift
//  Maybach
//
//  Created by martin.przystalka on 19/04/2019.
//  Copyright © 2019 MH. The MIT License (MIT).
//

import Foundation

class LocalizeProvider {
    private var localizableFile: NSDictionary? {
        guard let path = Bundle.main.path(forResource: "Localizable", ofType: "strings"),
            let localizableDictionary = NSDictionary(contentsOfFile: path) else {
                log("Localizable.strings file not found.")
                return nil
        }
        return localizableDictionary
    }

    func localize(_ key: String) -> String {
        guard let localizedString = localizableFile?.value(forKey: key) as? String else {
            log("Missing translation for key \(key)")
            return ""
        }
        return localizedString
    }
}
