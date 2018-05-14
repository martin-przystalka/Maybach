//
//  File.swift
//  Maybach
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

import Foundation

///Provide quick access to any file stored in project.
public class File {
    
    ///Loading file with passed path and extension. If there is no such file in boundle - return nil.
    public static func load(fileName: String,
                            fileExtension: String,
                            bundle: Bundle = Bundle.main) -> Any? {
        guard let path = bundle.path(forResource: fileName, ofType: fileExtension) else {
            return nil
        }
        
        do {
            return try NSData(contentsOfFile: path, options: NSData.ReadingOptions.mappedIfSafe) as Data
        } catch {
            return nil
        }
    }
}
