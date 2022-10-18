//
//  TVShowTests.swift
//  
//
//  Created by Fernando Torcelly Garcia on 16/10/22.
//

import Foundation

@testable import TMDb
import XCTest

final class TVShowTests: XCTestCase {

    private var fanart: FanartAPI!

    override func setUpWithError() throws {
        super.setUp()
        fanart = FanartAPI(apiKey: "", urlSessionConfiguration: .integrationTest)
    }

    override func tearDown() {
        fanart = nil
        FanartTVURLProtocol.reset()
        super.tearDown()
    }

    func testTVShows() async throws {
        FanartTVURLProtocol.add("tv-images", for: TVShowsEndpoint.tv(tvdb: 75682))

        let tvShow = try await fanart.tvshows.tv(tvdb: 75682)

        XCTAssertTrue(!movieList.results.isEmpty)
    }

}
