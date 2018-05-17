//
//  UIColorExtensionTests.swift
//  MaybachTests
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

@testable import Maybach
import XCTest

final class UIColorExtensionTests: XCTestCase {
    
    func testInitHex() {
        let color = UIColor(hex: "#53f442")
        XCTAssertNotNil(color)
    }
    
    func testInitHexWithFalseValue() {
        let color = UIColor(hex: "533243f442")
        XCTAssertEqual(color, UIColor(red: 1, green: 1, blue: 1, alpha: 1))
    }
    
    func testInitHexWithoutHashtag() {
        let color = UIColor(hex: "53f442")
        let colorWithHashtag = UIColor(hex: "#53f442")
        XCTAssertEqual(color, colorWithHashtag)
    }
    
    func testDarker() {
        let color = UIColor(hex: "53f442")
        let newColor = color.darker(by: 0.1)
        XCTAssertNotEqual(newColor, UIColor(hex: "53f442"))
    }
    
    func testDarkerDefaultValue() {
        let color = UIColor(hex: "53f442")
        let newColor = color.darker()
        XCTAssertNotEqual(newColor, UIColor(hex: "53f442"))
    }
    
    func testLighter() {
        let color = UIColor(hex: "53f442")
        let newColor = color.lighter(by: 0.1)
        XCTAssertNotEqual(newColor, UIColor(hex: "53f442"))
    }
    
    func testLighterDefaultValue() {
        let color = UIColor(hex: "53f442")
        let newColor = color.lighter()
        XCTAssertNotEqual(newColor, UIColor(hex: "53f442"))
    }
}
