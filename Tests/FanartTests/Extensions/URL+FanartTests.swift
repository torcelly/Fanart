//
//  URL+FanartTests.swift
//
//
//  Created by Fernando Torcelly Garcia on 18/10/22.
//

@testable import Fanart
import XCTest

final class URLFanartTests: XCTestCase {

    func testFanartAPIBaseURLReturnsCorrectURL() {
        let expectedResult = URL(string: "http://webservice.fanart.tv/v3")!

        let result = URL.fanartAPIBaseURL

        XCTAssertEqual(result, expectedResult)
    }

}
