//
//  DateFormatter+FanartTests.swift
//
//
//  Created by Fernando Torcelly Garcia on 18/10/22.
//

@testable import Fanart
import XCTest

final class DataFormatterTMDbTests: XCTestCase {

    func testTheMovieDatabaseFormatterHasCorrectDateFormat() {
        let expectedResult = "yyyy-MM-dd"

        let result = DateFormatter.fanart.dateFormat

        XCTAssertEqual(result, expectedResult)
    }

}
