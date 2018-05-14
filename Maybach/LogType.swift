//
//  LogType.swift
//  Maybach
//
//  Created by Martin Przystalka on 30/01/2018.
//  Copyright © 2018 mh. All rights reserved.
//

///Type of log. 
public enum LogType: String {
    ///Use when printing information to console.
    case info = "info: "
    ///Use when printing exception to console.
    case exception = "exception: "
    ///Use when printing error to console.
    case error = "error: "
}
