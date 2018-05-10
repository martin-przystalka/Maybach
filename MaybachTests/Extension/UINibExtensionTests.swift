//
//  UINibExtensionTests.swift
//  MaybachTests
//
//  Created by Martin Przystalka on 12/04/2018.
//  Copyright © 2018 mh. All rights reserved.
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
