//
//  UINibExtensionTests.swift
//  MaybachTests
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

@testable import Maybach
import XCTest

final class UINibExtensionTests: XCTestCase {
    
    func testGet() {
        guard let view = UINib.get(MockView.self) else {
            XCTFail("expect to have view at this moment.")
            return
        }
        
        XCTAssertTrue(view.isKind(of: MockView.self))
    }
    
    func testGetFail() {
        let view = UINib.get(MockStruct.self)
        XCTAssertNil(view)
    }
}
