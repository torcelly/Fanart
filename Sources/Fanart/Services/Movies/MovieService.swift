//
//  MovieService.swift
//  
//
//  Created by Fernando Torcelly Garcia on 15/10/22.
//

import Foundation

/// A service to fetch an up to date list of all of the movie ids that have been changed in the past 24 hours.
public protocol MovieService {

    /// Returns  movie ids that have been changed.
    ///
    /// [Fanart API - Get images for Movie](https://fanarttv.docs.apiary.io/reference/movies/get-movies/get-images-for-movie)
    ///
    /// - Precondition: `page` can be between `1` and `1000`.
    ///
    /// - Parameters:
    ///     - imdb: IMDB identifier.
    ///
    /// - Returns: A array of movie ids as a pageable list.
    func movie(imdb: String) async throws -> Movie
    
    /// Returns  movie ids that have been changed.
    ///
    /// [Fanart API - Get images for Movie](https://fanarttv.docs.apiary.io/reference/movies/get-movies/get-images-for-movie)
    ///
    /// - Parameters:
    ///     - tmdb: TMDB identifier.
    ///
    /// - Returns: A array of movie ids as a pageable list.
    func movie(tmdb: Int) async throws -> Movie

}

public extension MovieService {

    func movie(imdb: String) async throws -> Movie {
        try await movie(imdb: imdb)
    }
    
    func movie(tmdb: Int) async throws -> Movie {
        try await movie(tmdb: tmdb)
    }

}
