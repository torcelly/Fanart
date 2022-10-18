//
//  URL+QueryItemTests.swift
//
//
//  Created by Fernando Torcelly Garcia on 18/10/22.
//

@testable import Fanart
import XCTest

final class URLQueryItemTests: XCTestCase {

    func testAppendingIntPathComponentReturnsURL() {
        let expectedResult = URL(string: "/some/path/2")!

        let result = URL(string: "/some/path")!.appendingPathComponent(2)

        XCTAssertEqual(result, expectedResult)
    }

    func testAppendingQueryItemWhenNoQueryItemsReturnsURL() {
        let expectedResult = URL(string: "/some/path?a=b")!

        let result = URL(string: "/some/path")!.appendingQueryItem(name: "a", value: "b")

        XCTAssertEqual(result, expectedResult)
    }

    func testAppendingQueryItemWhenContainsQueryItemsReturnsURL() {
        let expectedResult = URL(string: "/some/path?a=b&c=d")!

        let result = URL(string: "/some/path?a=b")!.appendingQueryItem(name: "c", value: "d")

        XCTAssertEqual(result, expectedResult)
    }

    func testAppendingAPIKeyWhenNoQueryItemsReturnsURL() {
        let expectedResult = URL(string: "/some/path?api_key=123456")!

        let result = URL(string: "/some/path")!.appendingAPIKey("123456")

        XCTAssertEqual(result, expectedResult)
    }

    func testAppendingAPIKeyWhenContainsQueryItemsReturnsURL() {
        let expectedResult = URL(string: "/some/path?a=b&api_key=123456")!

        let result = URL(string: "/some/path?a=b")!.appendingAPIKey("123456")

        XCTAssertEqual(result, expectedResult)
    }

}
