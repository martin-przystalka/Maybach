//
//  LocalizeProviderTest.swift
//  Maybach
//
//  Created by martin.przystalka on 19/04/2019.
//  Copyright © 2019 MH. The MIT License (MIT).
//

@testable import Maybach
import XCTest


final class LocalizeProviderTest: XCTestCase {

    func testLocalizableFileExist() {
        let provider = LocalizeProvider(bundle: Bundle(for: LocalizeProviderTest.self))
        XCTAssertNotNil(provider.localizableFile)
    }

    func testLocalizableEmptyValue() {
        let provider = LocalizeProvider()
        XCTAssertEqual(provider.localize(""), "")
    }

    func testLocalizableMissingKey() {
        let provider = LocalizeProvider()
        XCTAssertEqual(provider.localize("titleKey"), "")
    }

    func testLocalizableExistingKey() {
        let provider = LocalizeProvider(bundle: Bundle(for: LocalizeProviderTest.self))
        XCTAssertEqual(provider.localize("testKey"), "This is test value")
    }
}
