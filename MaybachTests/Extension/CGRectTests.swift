//
//  CGRectTests.swift
//  MaybachTests
//
//  Created by Martin Przystalka on 08/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

@testable import Maybach
import XCTest

final class CGRectTests: XCTestCase {
    
    func testCenter() {
        let origin = CGPoint(x: 0, y: 0)
        let size = CGSize(width: 10, height: 10)
        let rect = CGRect(origin: origin, size: size)
        XCTAssertEqual(rect.center, CGPoint(x: rect.midX, y: rect.midY))
    }
}
