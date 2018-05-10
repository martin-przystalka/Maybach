//
//  Functions.swift
//  Maybach
//
//  Created by Martin Przystalka on 22/09/2017.
//  Copyright © 2017 mh. All rights reserved.
//

///Printing in console passed parameter.
public func log(_ message: String) {
    print(message)
}

///Printing message to console with composed format.
public func log(_ type: LogType, _ className: Any, _ functionName: String, _ lineNumber: Int) {
    let typeString = type.rawValue
    let classString = String(describing: className)
    let message = "\(typeString) \(classString) function: \(functionName) line: \(lineNumber)"
    log(message)
}
