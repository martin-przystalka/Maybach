//
//  UIResponderExtensionTests.swift
//  MaybachTests
//
//  Created by Martin Przystalka on 12/04/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

@testable import Maybach
import XCTest

final class UIResponderExtensionTests: XCTestCase {
    
    func testName() {
        XCTAssertEqual(MockView.name, "MockView")
    }
}
