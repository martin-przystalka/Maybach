//
//  StringExtensionTests.swift
//  MaybachTests
//
//  Created by Martin Przystalka on 12/04/2018.
//  Copyright © 2018 mh. All rights reserved.
//

@testable import Maybach
import XCTest

final class StringExtensionTests: XCTestCase {
    
    func testSubstring() {
        let testString = "testString"
        let substring = testString.substring(from: 0, to: 3)
        XCTAssertEqual("test", substring)
        
        let substringTwo = testString.substring(from: 4, to: 9)
        XCTAssertEqual("String", substringTwo)
    }
    
    func testIsNumber() {
        let numberString = "233243"
        XCTAssertTrue(numberString.isNumber)
    }
    
    func testIsNumberFail() {
        let testString = "testTest"
        XCTAssertFalse(testString.isNumber)
    }
}
