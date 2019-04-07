//
//  DispatchQueue+Extension.swift
//  Maybach
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

import Foundation

///Extension for DispatchQueue
public extension DispatchQueue {
    
    /**
     Quick access for background thread with possibility of delay.
     'Delay' parameter is in seconds with accuracy to miliseconds.
     'Execute' closure parameter is triggered after delay time.
    */
    static func background(delay: Double? = nil, execute: @escaping (() -> Void)) {
        guard let delay = delay else {
            runInBackground(deadline: DispatchTime.now(), execute: execute)
            return
        }
        let milliseconds = Int(delay * 1000.0)
        let deadline = DispatchTime.now() + .milliseconds(milliseconds)
        runInBackground(deadline: deadline, execute: execute)
    }
    
    private static func runInBackground(deadline: DispatchTime, execute: @escaping (() -> Void)) {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: deadline, execute: execute)
    }
}
