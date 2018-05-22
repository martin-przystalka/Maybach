//
//  Functions.swift
//  Maybach
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

///Printing in console passed parameter.
public func log(_ message: String) {
    print(message)
}

///Printing message to console with composed format.
public func log(_ type: LogType,
                _ className: Any,
                _ functionName: String,
                _ lineNumber: Int,
                _ description: String = "") {
    let typeString = type.rawValue
    let classString = String(describing: className)
    let message = "\(typeString) \(classString) function: \(functionName) line: \(lineNumber). \(description)"
    log(message)
}
