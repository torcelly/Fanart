//
//  MovieTests.swift
//  
//
//  Created by Fernando Torcelly Garcia on 16/10/22.
//

import Foundation

@testable import Fanart
import XCTest

final class MovieTests: XCTestCase {

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

    func testMoviesIMDB() async throws {
        FanartTVURLProtocol.add("movies-images", for: MoviesEndpoint.movieIMDB(imdb:"tt0109830"))

        let movie = try await fanart.movies.movie(imdb: "tt0109830")
        
        XCTAssertTrue(movie.imdbId == "tt0109830")
    }

    func testMoviesTMDB() async throws {
        FanartTVURLProtocol.add("movies-images", for: MoviesEndpoint.movieTMDB(tmdb: 13))

        let movie = try await fanart.movies.movie(tmdb: 13)

        XCTAssertTrue(movie.tmdbId == "13")
    }

}
