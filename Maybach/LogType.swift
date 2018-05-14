//
//  LogType.swift
//  Maybach
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
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
