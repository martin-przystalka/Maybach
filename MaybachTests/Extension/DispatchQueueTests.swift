//
//  DispatchQueueTests.swift
//  MaybachTests
//
//  Created by Martin Przystalka on 08/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

@testable import Maybach
import XCTest

final class DispatchQueueTests: XCTestCase {
    
    func testBackgroundWithoutDelay() {
        let backgroundThreadExpectation = expectation(description: "should be executed without delay")
        
        DispatchQueue.background {
            backgroundThreadExpectation.fulfill()
        }
        wait(for: [backgroundThreadExpectation], timeout: 0.1)
    }
    
    func testBackgroundWithoutDelayPassingNil() {
        let backgroundThreadExpectation = expectation(description: "should be executed without delay")
        
        DispatchQueue.background(delay: nil) {
            backgroundThreadExpectation.fulfill()
        }
        wait(for: [backgroundThreadExpectation], timeout: 0.1)
    }
    
    func testBackgroundWithDelay() {
        let delay: Double = 0.5
        let backgroundThreadExpectation = expectation(description: "should be executed with \(delay) second delay")
        
        DispatchQueue.background(delay: delay) {
            backgroundThreadExpectation.fulfill()
        }
        wait(for: [backgroundThreadExpectation], timeout: delay + 0.1)
    }
    
    func testBackgroundThread() {
        let backgroundThreadExpectation = expectation(description: "should be executed without delay")
        
        DispatchQueue.background {
            XCTAssertFalse(Thread.isMainThread)
            if !Thread.isMainThread {
                backgroundThreadExpectation.fulfill()
            }
        }
        wait(for: [backgroundThreadExpectation], timeout: 0.5)
    }
}
