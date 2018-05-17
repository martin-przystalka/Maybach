//
//  FileTest.swift
//  MaybachTests
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

@testable import Maybach
import XCTest

final class FileTest: XCTestCase {
    
    func testLoadInfoPlist() {
        let item = load(fileName: "Info", fileExtension: "plist", bundle: Bundle(for: FileTest.self))
        XCTAssertNotNil(item, "expect to have file at this moment.")
    }
    
    func testLoadFromOtherBundle() {
        let item = load(fileName: "Info", fileExtension: "plist", bundle: Bundle(for: File.self))
        XCTAssertNotNil(item, "expect to have file at this moment.")
    }
    
    func testLoadFromDefaultBundle() {
        let item = load(fileName: "Info", fileExtension: "plist")
        XCTAssertNil(item, "expect to be unable to load file with this configuration.")
    }
    
    func testLoadGeojson() {
        let item = load(fileName: "MockJson", fileExtension: "geojson", bundle: Bundle(for: FileTest.self))
        XCTAssertNotNil(item, "expect to have file at this moment.")
    }
    
    func testLoadFileThatDoesntExist() {
        let item = load(fileName: "TestNameOfFileThatDoesntExist",
                        fileExtension: "geojson",
                        bundle: Bundle(for: FileTest.self))
        XCTAssertNil(item, "expect to be unable to load file with this configuration.")
    }
    
    private func load(fileName: String, fileExtension: String, bundle: Bundle? = nil) -> Any? {
        guard let bundle = bundle else {
            let item = File.load(fileName: fileName,
                                 fileExtension: fileExtension)
            return item
        }
        let item = File.load(fileName: fileName,
                             fileExtension: fileExtension,
                             bundle: bundle)
        return item
    }
}
