//
//  FanartAPITests.swift
//  
//
//  Created by Fernando Torcelly Garcia on 16/10/22.
//

@testable import Fanart
import XCTest

final class FanartAPITests: XCTestCase {

    var fanart: FanartAPI!
    var movieService: MockMovieService!
    var tvshowService: MockTVShowService!

    override func setUp() {
        super.setUp()
        movieService = MockMovieService()
        tvshowService = MockTVShowService()
        fanart = FanartAPI(
            movies: movieService,
            tvshows: tvshowService
        )
    }

    override func tearDown() {
        fanart = nil
        movieService = nil
        tvshowService = nil
        super.tearDown()
    }

    func testInit() {
        XCTAssertIdentical(fanart.movies as? MockMovieService, movieService)
        XCTAssertIdentical(fanart.tvshows as? MockTVShowService, tvshowService)
    }

}
