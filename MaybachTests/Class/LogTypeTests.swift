//
//  LogTypeTests.swift
//  MaybachTests
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
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
