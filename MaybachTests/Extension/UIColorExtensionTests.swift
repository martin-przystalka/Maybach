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
        let newColor = color.darker(by: 0.2)
        XCTAssertEqual(newColor.hex, "#20C10F")
    }
    
    func testDarkerDefaultValue() {
        let color = UIColor(hex: "53f442")
        let newColor = color.darker()
        XCTAssertEqual(newColor.hex, "#39DA28")
    }
    
    func testLighter() {
        let color = UIColor(hex: "53f442")
        let newColor = color.lighter(by: 0.2)
        XCTAssertEqual(newColor.hex, "#86FF75")
    }
    
    func testLighterDefaultValue() {
        let color = UIColor(hex: "86FF75")
        let newColor = color.lighter()
        XCTAssertEqual(newColor.hex, "#9FFF8E")
    }
    
    func testWhiteHex() {
        let color = UIColor.white
        let colorHex = color.hex
        XCTAssertEqual(colorHex, "#FFFFFF")
    }
    
    func testCustomHex() {
        let hexString = "#53F442"
        let color = UIColor(hex: hexString)
        XCTAssertEqual(color.hex, hexString)
    }
}
