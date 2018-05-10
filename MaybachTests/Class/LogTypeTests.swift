//
//  LogTypeTests.swift
//  MaybachTests
//
//  Created by Martin Przystalka on 12/04/2018.
//  Copyright © 2018 mh. All rights reserved.
//

@testable import Maybach
import XCTest

final class LogTypeTests: XCTestCase {
    
    func testRawValues() {
        XCTAssertEqual(LogType.info.rawValue, "info: ")
        XCTAssertEqual(LogType.exception.rawValue, "exception: ")
        XCTAssertEqual(LogType.error.rawValue, "error: ")
    }
    
}
